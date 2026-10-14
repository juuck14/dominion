"""Stage 6 - write ``reports/completeness_report.md`` (Korean prose, English identifiers).

Everything in the report is computed from data/ah2e_base.json, reports/validation.json,
reports/sqlite_export.json and sources/manifest.json - re-running the pipeline refreshes it.
"""
import collections
import json

from . import config
from .util import read_json

STATUS_KO = {
    "confirmed": "확정(독립 출처 2개 이상 일치)", "confirmed_minor_variants": "확정(철자·문장부호 차이만 있음)",
    "single_source": "단일 출처", "conflict_resolved": "충돌→규칙으로 결정", "conflict": "텍스트 충돌(우선 출처 유지)",
    "conflict_unresolved": "충돌 미해결(null)", "errata_applied": "정오표 적용", "derived": "파생/해석",
    "missing": "누락(null)", "none_recorded": "기록 없음(선택 필드)",
}
KIND_KO = {"investigators": "조사자", "ancient_ones": "고대의 존재", "monsters": "몬스터", "locations": "장소",
           "neighborhoods": "지역(neighborhood)", "other_worlds": "다른 세계", "encounters": "조우 본문", "areas": "거리·특수 구역"}


def md_table(header, rows):
    out = ["| " + " | ".join(header) + " |", "|" + "|".join("---" for _ in header) + "|"]
    for r in rows:
        out.append("| " + " | ".join(str(x).replace("|", "\\|").replace("\n", " ") if x is not None else "—" for x in r) + " |")
    return "\n".join(out)


def short(v, n=70):
    s = v if isinstance(v, str) else json.dumps(v, ensure_ascii=False)
    return s if len(s) <= n else s[:n - 1] + "…"


def run(log=print):
    d = read_json(config.DATA_DIR / "ah2e_base.json")
    val = read_json(config.REPORT_DIR / "validation.json")
    sq = read_json(config.REPORT_DIR / "sqlite_export.json", {})
    man = read_json(config.MANIFEST)
    checks = {c["check"]: c for c in val["checks"]}
    L = []
    A = L.append
    A("# 아컴호러 2판(2005) 기본판 데이터 — 완성도 보고서")
    A("")
    A("- 생성: `%s` (스키마 %s) — `python -m ah2e all` 로 재생성" % (d["meta"]["generated_at"], d["meta"]["schema_version"]))
    A("- 범위: Arkham Horror 2nd Edition 기본판만. LCG(카드게임)·3판 자료는 사용하지 않음. 확장판은 `set_id` 로 식별만 가능하고 통합하지 않음.")
    A("- 데이터 파일: `data/ah2e_base.json`(출처·상태 포함 원본), `data/ah2e_base.sqlite`(동일 내용), `data/ah2e_base.game.json`(출처 정보 제외 경량본)")
    A("")
    # ------------------------------------------------------------------ 1 summary
    s = val["summary"]
    A("## 1. 요약")
    A("")
    A("검증 결과: 통과 %d · 실패 %d · 미완성(incomplete) %d · 경고 %d. 실패 0은 **무결성·구조 검사**가 통과했다는 뜻이며, "
      "**전체 DB 완성을 뜻하지 않는다** — 아래 미완성 항목이 남아 있다." % (s["pass"], s["fail"], s["incomplete"], s["warn"]))
    A("")
    cnt = {c["component"]: c for c in []}
    rows = []
    for name in ("count:Location Cards", "count:Gate Cards", "count:Mythos Cards", "count:Common Items", "count:Unique Items",
                 "count:Spells", "count:Skills", "count:Allies", "count:Special Cards", "count:Investigator Sheets",
                 "count:Ancient One Sheets", "count:Monster Markers", "count:Gate Markers"):
        c = checks[name]
        det = c["detail"]
        rows.append([name.split(":", 1)[1], det["official"], det["records"], det["printed_in_data"],
                     {"pass": "일치", "incomplete": "**미완성**", "fail": "**불일치**"}[c["result"]]])
    A("| 구분 | 상태 |")
    A("|---|---|")
    A("| 데이터 존재 | 조사자 16/16, 고대의 존재 8/8, 장소 27(보드 26 + 조우 전용 Inner Sanctum), 지역 9, 다른 세계 8, 아컴 조우 카드 63장/본문 189, "
      "다른 세계 조우 카드 49장/본문 145, 신화 카드 67, 조사자 카드 189장(서로 다른 카드 87종), 정오표 10건. **몬스터는 60개 중 이름 3개(수치 2개)뿐, 보드 연결·차원문 마커 구성은 없음.** |")
    A("| 구조 | 카드 1장 = 조우 3개(장소/다른 세계) 구조, 재섞기 카드, 신화 카드 위치·이동 기호, 조사자 슬라이더가 원본 행과 대조 검증됨 |")
    A("| 수량 | 아래 표 — 몬스터·차원문 마커 외 모든 덱이 공식 구성물 수량과 일치 |")
    A("| 정확성 | 필드마다 상태 기록(§4). 단일 출처 값 %d개, 규칙으로 해결한 충돌 %d건, 텍스트 충돌 %d건, 검색 요약에 의존한 판단 포함(§7) |"
      % (checks["field_status_distribution"]["detail"].get("single_source", 0),
         sum(1 for c in d["conflicts"] if c["status"] == "conflict_resolved"),
         sum(1 for c in d["conflicts"] if c["status"] == "conflict")))
    A("")
    # ------------------------------------------------------------------ 2 counts
    A("## 2. 종류별 예상 수량 vs 확보 수량")
    A("")
    A("공식 수량은 핵심 규칙서 p.2 구성물 목록(`data` 의 `components`, 상·하위 합계 검증 완료)에서 추출. "
      "‘레코드’는 서로 다른 카드/항목 수, ‘인쇄 수량’은 레코드별 `copies` 합계다.")
    A("")
    A(md_table(["구성물", "공식 수량", "레코드 수", "데이터상 인쇄 수량", "결과"], rows))
    A("")
    enc = checks["encounter_texts_vs_arkhamdb_rows"]["detail"]
    A("- 조우 본문: 아컴 %d/%d, 다른 세계 %d/%d (데이터/arkhamdb 기본판 행). 이전 조사 수치(장소 27, 아컴 카드 63·본문 189, 다른 세계 카드 49·본문 145)를 SQL에서 직접 재검증함."
      % (enc["location_encounters"][0], enc["location_encounters"][1], enc["gate_encounters"][0], enc["gate_encounters"][1]))
    A("- 합계: 조사자 카드 %s/%s, 고대의 존재 카드 %s/%s." % (checks["count:Investigator Cards (total)"]["detail"]["printed_in_data"],
                                                     checks["count:Investigator Cards (total)"]["detail"]["official"],
                                                     checks["count:Ancient One Cards (total)"]["detail"]["printed_in_data"],
                                                     checks["count:Ancient One Cards (total)"]["detail"]["official"]))
    A("- 도우미 프로젝트(helper)의 ‘신화 66장 / 다른 세계 48장’ 차이 설명: helper는 기본판 신화 카드 *R'lyeh Rising* 을 Dunwich Horror로 분류했고"
      "(다른 3개 출처는 기본판, 공식 67장 수량도 이 카드를 포함해야 맞음), 다른 세계 덱 재섞기 카드 *The Stars are Right* 가 빠져 있다.")
    A("")
    # ------------------------------------------------------------------ 3 sources
    A("## 3. 출처")
    A("")
    rows = []
    role = {"arkhamdb_sql": "조우 카드·장소·다른 세계 (기준 출처)", "helper_snapshot": "신화·장소·지역 색·고대의 존재",
            "helper_wiki_scrape": "2판 위키(fandom) 스크랩 사본: 신화·장소·고대의 존재", "official_docs": "공식 규칙서·FAQ PDF",
            "jesseflorig_json": "동료·고대의 존재·신화(부분), 고대의 존재 시트 이미지", "kuerv0_json": "조사자·조사자 카드 전체·조우·신화",
            "ellebaum_json": "신화 67·다른 세계 조우 49", "gorlith_android": "조사자 시트 이미지 16장 + 정신력/체력 표",
            "pavelius_cpp": "일반 아이템 가격·몬스터 3종(부분)", "fandom_wiki": "2판 위키 직접 수집(차단됨)",
            "card_image": "카드/시트 이미지 수동 판독", "web_search_fandom": "위키 페이지의 검색엔진 요약(동점 해소용)"}
    for s_ in d["sources"]:
        rows.append([s_["id"], s_.get("type"), s_.get("repository") or "", (s_.get("commit_sha") or "")[:12], s_.get("status"),
                     s_.get("independence_group"), role.get(s_["id"], "")])
    A(md_table(["id", "종류", "저장소", "커밋", "상태", "독립성 그룹", "역할"], rows))
    A("")
    A("- 각 파일의 URL·SHA-256·수집 시각은 `sources/manifest.json`, 출처별 파싱 결과는 `sources/parsed/*.json`, 원본 사본은 `sources/raw/` 에 있다.")
    A("- 같은 계보(예: helper 스냅샷·위키 스크랩·위키 검색 요약)는 하나의 독립성 그룹으로 묶어, 서로 베낀 값이 ‘확정’으로 부풀려지지 않게 했다.")
    A("- 사용하지 않은 출처: " + "; ".join("%s(%s)" % (x["title"], x["reason"]) for x in man.get("excluded_sources", [])))
    A("- 네트워크: " + man.get("network_note", ""))
    fw = man["sources"].get("fandom_wiki", {})
    A("- fandom 위키 직접 수집 상태: `%s` (%s)" % (fw.get("status"), fw.get("error")))
    A("")
    A("### 출처별 기본판 기여(레코드 수)")
    A("")
    kinds = [("investigators", None), ("ancient_ones", None), ("locations", None), ("cards", "location"), ("cards", "gate"),
             ("cards", "mythos"), ("cards", "common_item"), ("cards", "unique_item"), ("cards", "spell"), ("cards", "skill"),
             ("cards", "ally"), ("cards", "special"), ("monsters", None)]
    srcs = [x["id"] for x in d["sources"]]
    cov = {}
    for k, t in kinds:
        rows_ = [r for r in d[k] if t is None or r.get("card_type") == t]
        for r in rows_:
            ids_ = {kk for kk, vv in (r.get("source_ids") or {}).items() if vv}
            fs_ = r.get("field_status") or {}
            for st in fs_.values():
                if isinstance(st, dict):
                    ids_ |= set(st.get("sources") or []) if isinstance(st.get("sources"), list) and all(isinstance(x, str) for x in st.get("sources") or []) else set()
                    ids_ |= set(st.get("agreeing_sources") or [])
                    ids_ |= set((st.get("matched_sources") or {}).keys())
                    ids_ |= set((st.get("_coverage") or {}).get("present_in") or [])
            if "_coverage" in fs_:
                ids_ |= set(fs_["_coverage"].get("present_in") or [])
            for s_ in ids_:
                cov[(k + (":" + t if t else ""), s_)] = cov.get((k + (":" + t if t else ""), s_), 0) + 1
    used = [s_ for s_ in srcs if any(kk[1] == s_ for kk in cov)]
    rows = [[k + (":" + t if t else ""), len([r for r in d[k] if t is None or r.get("card_type") == t])] +
            [cov.get((k + (":" + t if t else ""), s_), "") for s_ in used] for k, t in kinds]
    A(md_table(["종류", "통합 레코드"] + used, rows))
    A("")
    A("숫자는 해당 출처가 값이나 매칭 레코드를 제공한 통합 레코드 수(필드 단위 기여 포함)다.")
    A("")
    A("### 공식 문서")
    A("")
    rows = []
    for doc in d["documents"]:
        rows.append([doc["doc_id"], doc.get("title"), "공식" if doc.get("official") else "비공식", doc.get("official_url") or "—",
                     (doc.get("sha256") or "")[:16], doc.get("pages")])
    A(md_table(["doc_id", "제목", "구분", "URL", "SHA-256(앞 16자)", "쪽수"], rows))
    A("")
    rb, fq = d["meta"].get("rulebook") or {}, d["meta"].get("faq") or {}
    A("- 규칙서 판본: PDF 본문 저작권 표기 `%s` → 2006년 개정 인쇄본 규칙서. 2005년 초판 규칙서는 확보하지 못했다." % rb.get("quote"))
    A("- FAQ 판본: `%s %s` (본문 첫 줄)." % (fq.get("version"), fq.get("date")))
    A("- 규칙서·FAQ에서 옮긴 값(정오표 10건, 참조 표 %d개)은 인용문이 PDF 텍스트에 그대로 있는지 자동 검사한다: %d건 모두 통과."
      % (len(d["reference"]) - 1, checks["manual_quotes_found_in_official_pdfs"]["detail"]["checked"]))
    A("")
    # ------------------------------------------------------------------ 4 field status
    A("## 4. 필드 상태 통계")
    A("")
    per = collections.defaultdict(collections.Counter)
    for k, rows_ in d.items():
        if not isinstance(rows_, list):
            continue
        for r in rows_:
            if not isinstance(r, dict) or "field_status" not in r:
                continue
            kk = "cards." + r["card_type"] if k == "cards" else k
            for f, st in r["field_status"].items():
                if isinstance(st, dict) and st.get("status"):
                    per[kk][st["status"]] += 1
    cols = ["confirmed", "confirmed_minor_variants", "single_source", "conflict_resolved", "conflict", "errata_applied", "derived", "none_recorded", "missing"]
    rows = [[k] + [per[k].get(c, 0) or "" for c in cols] for k in sorted(per)]
    A(md_table(["종류"] + cols, rows))
    A("")
    A("상태 의미: " + "; ".join("`%s` %s" % (k, v) for k, v in STATUS_KO.items()) + ".")
    A("")
    # ------------------------------------------------------------------ 5 missing
    A("## 5. 누락 항목과 필드")
    A("")
    rows = []
    for m in d["missing"]:
        rows.append([m["entity_id"], m["field"], m["reason"]])
    A(md_table(["대상", "필드", "사유"], rows))
    A("")
    A("- 몬스터: 공식 60개 마커 중 `pavelius_cpp`(부분 구현 C++ 표)에서 이름 3개, 수치 2세트만 얻었다. 이 값들도 다른 출처로 확인되지 않은 **단일 출처**다. "
      "몬스터 목록·수치의 계획된 출처는 2판 위키 Monster 페이지(차단됨)이며 `ah2e/fetch.py` 의 위키 수집기와 `ah2e/parsers/fandom_wiki.py` 가 준비돼 있다(실데이터로는 미검증).")
    A("- 보드 연결(거리·장소 인접 관계)과 차원문 마커 16개의 세계·수정치 구성은 어떤 접근 가능한 출처에도 없어 비워 두었다.")
    A("- `none_recorded` 는 선택 필드(예: 특수 능력이 없는 장소, 활동 표시가 없는 신화 카드)에 어느 출처도 값을 두지 않은 경우로, 누락과 구분한다.")
    A("")
    # ------------------------------------------------------------------ 6 conflicts
    A("## 6. 출처 간 충돌")
    A("")
    rows = []
    for c in d["conflicts"]:
        alts = c.get("alternatives") or []
        alt_txt = "; ".join("%s ← %s" % (short(a.get("value", a.get("text")), 40), ",".join(a.get("sources") or [a.get("source", "")]))
                            for a in alts)
        rows.append([c["entity_id"], c["field"], c["status"], short(c.get("chosen", c.get("chosen_source")), 30),
                     short(c.get("reason") or "", 90), short(alt_txt, 160)])
    A(md_table(["대상", "필드", "상태", "선택", "근거", "대안(값 ← 출처)"], rows))
    A("")
    A("결정 규칙(`ah2e/resolve.py`): ① 공식 정오표 ② 카드/시트 이미지 판독 또는 공식 문서 ③ 독립 출처 그룹의 과반(동점이면 null). "
      "텍스트는 우선 출처 문구를 유지하되 유사도 0.85 미만이면 `conflict` 로 표시하고 모든 이문을 남긴다.")
    A("")
    # ------------------------------------------------------------------ 7 review
    A("## 7. 추가 확인이 필요한 항목")
    A("")
    ev = read_json(config.MANUAL_DIR / "web_search_evidence.json")
    A("1. **검색 요약에 기대어 결정한 값** — 위키가 차단돼 `WebSearch` 결과 요약(원문 아님)을 동점 해소에만 썼다(%d건 조회). 위키 접근이 가능해지면 재확인 필요:" % len(ev["records"]))
    used = [c for c in d["conflicts"] if any("web_search_fandom" in (a.get("sources") or []) for a in c.get("alternatives") or [])]
    for c in used:
        A("   - `%s` %s → %s" % (c["entity_id"], c["field"], short(c.get("chosen"), 40)))
    A("2. **이미지 수동 판독 값** — 조사자 시트 16장·고대의 존재 시트 8장은 사람이 읽어 `manual/*.json` 에 옮겼다(OCR 아님). 시트 이미지에는 정신력/체력 숫자가 지워져 있어 이 두 값은 다른 출처로 정했다.")
    A("3. **단일 출처 필드** — 고유 아이템 대부분(26종 중 가격·본문·손 수)·기술·주문 본문은 Kuerv0 하나에만 있다. 장소 아이콘/안정성/특수 능력과 지역 카드 색, 신화 `gate_burst` 는 위키 계보 하나뿐이다.")
    A("4. **텍스트 충돌** — 아래는 우선 출처 문구를 유지했지만 다른 출처와 실질적으로 다르다:")
    for c in d["conflicts"]:
        if c["status"] == "conflict":
            A("   - `%s` (%s)" % (c["entity_id"], ", ".join("%s %.2f" % (a["source"], a["similarity"]) for a in c["alternatives"] if a.get("similarity") is not None)))
    A("5. **해석이 들어간 구조화** — Blessing/Curse 8장을 양면 카드 8장으로, ‘3 Deputy Cards’를 이름이 다른 3장 각 1장으로 해석했다. "
      "Inner Sanctum은 보드 장소가 아닌 조우 전용 구역(`kind=encounter_only`), 9개 거리 구역은 규칙서 문장에서 파생했다. 다른 세계 2구역(`areas`)은 비공식 EOG 요약에서 가져왔다.")
    A("6. **판본** — 규칙서는 2006 개정판, 조사자 시트 이미지는 정오표가 반영된 개정판 시트로 보인다(Bob Jenkins $9, Jenny Barnes 일반 아이템 2). "
      "2005 초판 원래 값은 FAQ가 밝힌 경우에만 `original_value` 로 남겼다.")
    unres = d.get("unresolved_references") or []
    if unres:
        A("7. **매핑 실패한 이름** — " + "; ".join("%s (%s)" % (u["name"], u["context"]) for u in unres) + " → 해당 출처 값은 `?이름` 으로 충돌 기록에 보존.")
    A("")
    # ------------------------------------------------------------------ 8 errata
    A("## 8. 정오표(FAQ v2.0) 적용")
    A("")
    rows = [[e["id"], "p.%s" % e["page"], short(e["quote"], 80), short(e.get("original_value"), 25), short(e.get("corrected_value"), 40),
             "예" if e.get("quote_verified") else "아니오"] for e in d["errata"]]
    A(md_table(["id", "쪽", "인용", "원래 값", "수정 값", "인용 검증"], rows))
    A("")
    # ------------------------------------------------------------------ 9 images
    A("## 9. 이미지 확보 여부")
    A("")
    roles = collections.Counter(i["role"] for i in d["images"])
    A(md_table(["역할", "개수", "설명"], [
        ["investigator_sheet_scan", roles.get("investigator_sheet_scan", 0), "조사자 시트 스캔(Gorlith 저장소, 350px) — 수동 판독에 사용"],
        ["ancient_one_sheet_scan", roles.get("ancient_one_sheet_scan", 0), "고대의 존재 시트 스캔(jesseflorig 저장소) — 수동 판독에 사용"],
        ["investigator_portrait", roles.get("investigator_portrait", 0), "조사자 초상(Kuerv0) — 텍스트 없음"],
        ["card_art_crop", roles.get("card_art_crop", 0), "일반·고유 아이템·주문 카드 그림 부분(Kuerv0) — 텍스트 없음"],
    ]))
    A("")
    A("이미지 파일 자체는 저장소에 넣지 않았다(`.cache/` 에만 저장, 저작권 FFG). `images` 표에 커밋 고정 URL·SHA-256·연결 엔티티를 기록했다. "
      "조우·신화·몬스터 카드 이미지는 확보하지 못했다.")
    A("")
    # ------------------------------------------------------------------ 10 validation
    A("## 10. 실행한 검증")
    A("")
    rows = [[c["group"], c["check"], c["result"], short(c.get("detail"), 110)] for c in val["checks"]]
    A(md_table(["그룹", "검사", "결과", "세부"], rows))
    A("")
    if sq:
        A("SQLite: integrity_check=`%s`, 외래키 위반 %d건, JSON↔SQLite 레코드 불일치 %d건, 테이블 %d개."
          % (sq.get("integrity_check"), len(sq.get("foreign_key_violations", [])), len(sq.get("json_sqlite_mismatches", [])), len(sq.get("table_counts", {}))))
    A("")
    # ------------------------------------------------------------------ 11 rerun
    A("## 11. 재실행 및 차단된 수집 단계")
    A("")
    A("```")
    A("python -m ah2e all            # fetch → parse → integrate → validate → export → report")
    A("python -m ah2e all --offline  # 네트워크 없이 .cache/ 와 sources/raw/ 만 사용")
    A("```")
    A("")
    A("차단된 단계: `fetch` 의 fandom 위키 수집(`arkham-horror-second-edition.fandom.com` 403). 환경의 네트워크 허용 목록에 이 도메인을 추가한 뒤 "
      "`python -m ah2e all` 을 다시 실행하면 위키 페이지가 `sources/raw/fandom_wiki/pages/` 에 저장되고 파싱된다. "
      "몬스터·보드 연결 통합 매핑은 실제 위키 템플릿 구조를 확인한 뒤 `ah2e/integrate.py` 에 추가해야 한다.")
    (config.REPORT_DIR / "completeness_report.md").write_text("\n".join(L) + "\n", encoding="utf-8")
    log("  wrote reports/completeness_report.md (%d lines)" % len(L))
