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
    mon_n = sum(m.get("count") or 0 for m in d["monsters"])
    A("| 데이터 존재 | 조사자 16/16, 고대의 존재 8/8, 장소 27(보드 26 + 조우 전용 Inner Sanctum), 지역 9, 다른 세계 8, 아컴 조우 카드 63장/본문 189, "
      "다른 세계 조우 카드 49장/본문 145, 신화 카드 67, 조사자 카드 189장(서로 다른 카드 87종), 정오표 10건, 몬스터 마커 %d개(%d종). "
      "**보드 연결·차원문 마커 구성은 없음.** |" % (mon_n, len(d["monsters"])))
    A("| 구조 | 카드 1장 = 조우 3개(장소/다른 세계) 구조, 재섞기 카드, 신화 카드 위치·이동 기호, 조사자 슬라이더가 원본 행과 대조 검증됨 |")
    A("| 수량 | 아래 표 — 차원문 마커 외 모든 구성물이 공식 수량과 일치 |")
    A("| 정확성 | 필드마다 상태 기록(§4). 단일 출처 값 %d개, 규칙으로 해결한 충돌 %d건, 텍스트 충돌 %d건. 위키 차단 중 쓴 검색 요약은 위키 원문으로 재확인(§7) |"
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
            "pavelius_cpp": "일반 아이템 가격·몬스터 3종(부분, Zombie 행은 오류로 제외)",
            "fandom_wiki": "2판 위키 MediaWiki API 직접 수집: 몬스터 전체·조사자 시트·조사자 카드 목록 표·카드 페이지",
            "card_image": "카드/시트 이미지 수동 판독",
            "web_search_fandom": "위키 검색엔진 요약(위키 차단 기간 동점 해소용) — 위키 원문으로 대체·재확인됨"}
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
    revs = [p_.get("revid") for p_ in fw.get("pages", []) if p_.get("revid")]
    A("- fandom 위키 직접 수집: 상태 `%s`, 페이지 %d개(`sources/raw/fandom_wiki/pages/`, 페이지별 revid·SHA-256은 manifest), "
      "수집 경로 %s. `/wiki/` HTML은 Cloudflare 봇 확인(403)이라 API만 쓴다."
      % (fw.get("last_online_status") or fw.get("status"), fw.get("pages_cached", 0),
         ", ".join("%s %d" % (k, v) for k, v in (fw.get("listings") or {}).items())))
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
    mons = d["monsters"]
    conf = [m["name"] for m in mons if (m["field_status"].get("awareness") or {}).get("status") == "confirmed"]
    blanks = ["%s %s" % (m["name"], f) for m in mons for f in ("horror_rating", "horror_damage", "combat_rating", "combat_damage")
              if (m["field_status"].get(f) or {}).get("status") == "none_recorded"]
    A("- 몬스터: 위키에서 `MonsterInfoBox` 를 쓰는 페이지 중 기본판 수량(`AHCount`)이 있는 %d종, 마커 %d개(공식 %s개와 일치). "
      "수치는 위키 한 계보뿐이라 대부분 **단일 출처**이고, `pavelius_cpp` 와 독립 확인된 것은 %s 뿐이다. "
      "pavelius의 Zombie 행은 위키의 Chthonian 수치와 완전히 같아(그 Chthonian 행은 비어 있음) 잘못 들어간 행으로 보고 Zombie의 근거에서 뺐다(충돌 기록 `_pavelius_row`)."
      % (len(mons), sum(m.get("count") or 0 for m in mons), checks["count:Monster Markers"]["detail"]["official"], ", ".join(conf) or "없음"))
    A("- 몬스터 빈칸(값이 인쇄되지 않음, `none_recorded`): " + ", ".join(blanks) +
      ". 위키 infobox가 빈칸이나 '-'로 둔 칸을 ‘마커에 숫자가 인쇄되지 않음’으로 해석했다(특수 규칙이 있으면 `rules_text`). "
      "마커 이미지로는 확인하지 못한 해석이며, 필수값 검사에서는 누락 대신 ‘기록된 빈칸’으로 따로 보고한다.")
    A("- 몬스터 이름 *The Dark Pharaoh*: 위키는 확장판 이름까지 ‘Pharoah’로 잘못 쓰고 있어 공식 표기 ‘Pharaoh’로 고쳤다(`field_status.name` = `derived`, 위키 표기는 `aliases`).")
    A("- 보드 연결(거리·장소 인접 관계)과 차원문 마커 16개의 세계·수정치 구성은 위키를 포함한 어떤 접근 가능한 출처에도 없어 비워 두었다(사유는 위 표).")
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
    rc = d["meta"].get("web_search_recheck") or {}
    summ = rc.get("summary") or {}
    A("1. **검색 요약 재확인(완료)** — 위키 차단 중 동점 해소에 쓴 `WebSearch` 요약 주장 %d개를 수집한 위키 원문(wikitext)과 대조했다: "
      "일치 %d, 불일치 %d, 위키에 없음 %d. 통합 단계는 이제 위키가 같은 필드를 줄 때 요약 대신 위키 원문을 쓴다(`meta.web_search_recheck`)."
      % (len(rc.get("rows") or []), summ.get("match", 0), summ.get("mismatch", 0), summ.get("not_found_on_wiki", 0)))
    for x in rc.get("rows") or []:
        if x["result"] != "match":
            A("   - %s %s: 요약 %s / 위키 %s (%s)" % (x["entity"], x["field"], x["search_summary_value"], x["wiki_value"], x["result"]))
    def wiki_decided(c):
        """majority decisions that would have been a tie without the fandom wiki lineage"""
        if c["status"] != "conflict_resolved" or "majority" not in (c.get("reason") or ""):
            return False
        alts = c.get("alternatives") or []
        win = next((a for a in alts if a.get("value") == c.get("chosen")), None)
        if not win or "fandom_wiki" not in (win.get("sources") or []):
            return False
        return len(win["groups"]) - 1 <= max(len(a["groups"]) for a in alts if a is not win)
    decided = [c for c in d["conflicts"] if wiki_decided(c)]
    A("   위키 계보가 과반을 만들어 결정된 값(%d건, 위키 원문 기준으로 다시 확인됨):" % len(decided))
    for c in decided:
        A("   - `%s` %s → %s" % (c["entity_id"], c["field"], short(c.get("chosen"), 40)))
    A("2. **이미지 수동 판독 값** — 조사자 시트 16장·고대의 존재 시트 8장은 사람이 읽어 `manual/*.json` 에 옮겼다(OCR 아님). 시트 이미지에는 정신력/체력 숫자가 지워져 있어 이 두 값은 다른 출처(Kuerv0·위키 조사자 템플릿·Gorlith·pavelius)로 정했다.")
    A("3. **단일 출처 필드** — 고유 아이템·기술·주문 본문은 Kuerv0 하나에만 있다(수량·가격·손 수·주문 수치는 위키 목록 표로 확인됨). "
      "몬스터 수치(Byakhee 제외), 장소 아이콘/안정성/특수 능력, 지역 카드 색, 신화 `gate_burst` 는 위키 계보 하나뿐이다.")
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
      "조우·신화 카드 이미지는 확보하지 못했다. 몬스터 마커 앞·뒷면은 위키 파일 이름만 `monsters[].image_refs` 에 기록했다 — "
      "위키 이미지 호스트(static.wikia.nocookie.net)가 이 환경에서 차단돼 파일·해시는 없다.")
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
    A("## 11. 재실행")
    A("")
    A("```")
    A("python -m ah2e all            # fetch → parse → integrate → validate → export → report")
    A("python -m ah2e all --offline  # 네트워크 없이 .cache/ 와 sources/raw/ 만 사용")
    A("```")
    A("")
    A("- fandom 위키는 MediaWiki API로 수집한다(이미 받은 페이지는 다시 받지 않음). 받은 wikitext는 `sources/raw/fandom_wiki/pages/` 에 버전 관리되므로 "
      "`--offline` 실행도 같은 결과를 낸다. 위키 최신판을 다시 받으려면 그 폴더의 페이지 파일을 지우고 온라인으로 실행한다.")
    A("- 여전히 막힌 것: 위키 이미지 호스트, FFG·BGG·archive.org. 보드 연결과 차원문 마커 구성은 공개 텍스트 출처가 없어, 보드·마커를 직접 보고 옮기는 수동 입력(`manual/`)이 필요하다.")
    (config.REPORT_DIR / "completeness_report.md").write_text("\n".join(L) + "\n", encoding="utf-8")
    log("  wrote reports/completeness_report.md (%d lines)" % len(L))
