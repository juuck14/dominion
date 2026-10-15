# Arkham Horror 2nd Edition (2005) — 기본판 통합 데이터베이스

아컴호러 **보드게임 2판(FFG, 2005 / 2006 개정 인쇄)** 기본판 데이터를 여러 공개 자료에서 모아
출처·충돌·누락을 보존한 채 정규화한 데이터셋과, 이를 재생성하는 Python 파이프라인입니다.
오프라인 안드로이드 앱에 넣을 수 있도록 JSON과 SQLite로 출력합니다. 게임 엔진/UI는 포함하지 않습니다.

- 대상: 2판 기본판만. **LCG(카드게임)·3판 자료는 쓰지 않았습니다.** 확장판은 `set_id` 로 식별 가능한 구조만 있고 통합하지 않았습니다.
- 현재 상태: **전체 DB 완성 아님.** 보드 연결 그래프와 차원문 마커 구성은 미확보입니다. 몬스터는 위키에서 29종·60개(공식 수량과 일치)를 확보했지만 수치 대부분이 위키 한 계보의 단일 출처입니다.
  자세한 수량·충돌·누락은 [`reports/completeness_report.md`](reports/completeness_report.md) 를 보세요.

## 산출물

| 경로 | 내용 |
|---|---|
| `data/ah2e_base.json` | 정규화된 기본판 데이터 + 필드별 출처·상태(`field_status`), 충돌, 누락, 정오표, 이미지 링크 |
| `data/ah2e_base.sqlite` | 위와 동일한 내용(정규화 테이블 + 레코드 원문 JSON + 출처 테이블) |
| `data/ah2e_base.game.json` | 출처 정보를 뺀 경량본(APK 번들용) |
| `sources/manifest.json` | 출처 목록: 저장소, **커밋 SHA**, 파일별 URL·SHA-256·수집 시각, 차단 기록 |
| `sources/raw/<source_id>/` | 출처별 원본 파일 사본(텍스트/JSON/SQL). PDF는 발췌 페이지 텍스트만(`official_docs/excerpts/`) |
| `sources/parsed/<source_id>.json` | 출처별 파싱 결과(정규화 전) |
| `manual/` | 사람이 만든 입력: 시트 이미지 판독, FAQ 정오표, 규칙서 참조 표, 검색 증거 |
| `reports/validation.json` | 검증 결과(검사별 pass/fail/incomplete/warn) |
| `reports/sqlite_export.json` | SQLite 무결성·외래키·JSON 대비 일치 검사 |
| `reports/completeness_report.md` | 기본판 완성도 보고서 |
| `ah2e/` | 수집·변환·검증 스크립트 |

## 실행

필요: Python 3.9+ (표준 라이브러리만 사용). PDF 텍스트 추출에 `pdftotext`(poppler) 또는 `pypdf` 가 있으면 사용하고,
없으면 저장소에 있는 PDF 발췌 텍스트(`sources/raw/official_docs/excerpts/`)로 대체합니다.

```bash
python -m ah2e all             # fetch → parse → integrate → validate → export → report
python -m ah2e all --offline   # 네트워크 없이 .cache/ 와 sources/raw/ 만 사용
python -m ah2e fetch           # 단계별 실행도 가능: fetch | parse | integrate | validate | export | report
```

- `fetch` 는 GitHub 파일을 **고정 커밋 SHA** 기준 `raw.githubusercontent.com` 에서 파일 단위로 받습니다(저장소 코드는 실행하지 않음).
  이미 `.cache/` 에 있으면 다시 받지 않고, 요청 간 1초 간격·최대 4회 지수 백오프 재시도(403/404는 재시도하지 않음)를 둡니다.
- 큰 바이너리(PDF·이미지)는 `.cache/` 에만 두고(git 제외) SHA-256을 manifest에 기록합니다.
- `validate` 는 무결성/구조 실패가 있으면 종료 코드 1을 반환합니다. `incomplete`(알려진 누락)는 실패로 치지 않습니다.

## 출처

| id | 출처 | 사용 내용 |
|---|---|---|
| `arkhamdb_sql` | [generalpf/arkhamdb](https://github.com/generalpf/arkhamdb) `13e485e2` — SQL 스크립트를 메모리 SQLite에 적재(CREATE/INSERT만 허용) | 아컴 조우 카드 63장·본문 189, 다른 세계 조우 카드 49장·본문 145, 장소 27, 지역 9, 다른 세계 8 (조우 카드 ID 기준 출처) |
| `helper_snapshot` | [Oakraven79/arkham-horror-2e-helper](https://github.com/Oakraven79/arkham-horror-2e-helper) `350ddf15` — `gameDataSnapshot.generated.ts` 를 **자체 JS 리터럴 파서로 읽음**(node 실행 안 함) | 신화·조우 카드, 장소 안정성·아이콘·특수 능력, 지역 카드 색, 고대의 존재 |
| `helper_wiki_scrape` | 같은 저장소 `wireframes/Source data/*.json` — 2판 fandom 위키 스크랩 사본 | 위키(출처 A) 내용의 2차 사본: 신화 287, 장소 57, 고대의 존재 25 |
| `official_docs` | 같은 저장소 `rulebooks/` 의 FFG PDF | 규칙서(© 2005, 2006) 구성물 수량·참조 표, FAQ v2.0(2012-12-05) 정오표 |
| `kuerv0_json` | [Kuerv0/arkham](https://github.com/Kuerv0/arkham) `fbdb3a8e` | 조사자 16, 일반/고유 아이템·주문·기술·동료·특수 카드, 조우·신화 카드 |
| `ellebaum_json` | [ellebaum/AHTools](https://github.com/ellebaum/AHTools) `e91c99b2` | 신화 67, 다른 세계 조우 49 |
| `jesseflorig_json` | [jesseflorig/arkham-horror-json](https://github.com/jesseflorig/arkham-horror-json) `a9c7bf6c` | 동료 11, 고대의 존재 8(JSON 문법 오류는 관대 파서로 읽고 경고 기록), 신화, 고대의 존재 시트 이미지 |
| `gorlith_android` | [Gorlith/Arkham-Horror-Helper](https://github.com/Gorlith/Arkham-Horror-Helper) `1e98a134` | 조사자 시트 이미지 16장(판독용), 정신력/체력 표 |
| `pavelius_cpp` | [Pavelius/arkham](https://github.com/Pavelius/arkham) `36a5621b` | 일반 아이템 가격/손 수, 몬스터 3종(부분 — Zombie 행은 Chthonian 수치가 잘못 들어가 제외), 조사자 2명 |
| `fandom_wiki` | arkham-horror-second-edition.fandom.com (MediaWiki API, 2026-10-15 수집, 페이지별 revid는 manifest) | 몬스터 29종(`MonsterInfoBox`), 조사자 시트 16(`Investigator` 템플릿), 일반/고유 아이템·주문 목록 표(수량·가격·손 수·주문 수치), 카드 페이지 |
| `card_image` | `manual/investigator_sheets.json`, `manual/ancient_one_sheets.json` | 시트 스캔을 사람이 판독한 값(이미지 파일·SHA-256 연결) |
| `web_search_fandom` | `manual/web_search_evidence.json` | 위키 차단 중 쓴 검색엔진 요약. 위키 원문과 재대조해 52/52 일치(`meta.web_search_recheck`) — 이제 위키가 같은 필드를 주지 않을 때만 사용 |

사용하지 않은 것: ArkhamDB.com / Kamalisk/arkhamdb-json-data (LCG), arkham-companion 의 Java 내장 데이터(이번 실행에서 미파싱), ellebaum 의 `.rb`(카드 단위 묶음이 없음).

## 데이터 스키마

### 공통 규칙

- **ID**: `종류.슬러그` 형식의 안정적 문자열. 조우 카드는 arkhamdb 고정 커밋의 카드 번호를 씁니다.
  `nbh.downtown`, `street.downtown`, `area.outskirts`, `loc.arkham_asylum`, `ow.yuggoth`, `inv.amanda_sharpe`, `ao.cthulhu`, `mon.byakhee`,
  `card.common.knife`, `card.unique.elder_sign`, `card.spell.wither`, `card.skill.bravery`, `card.ally.duke`, `card.special.bank_loan`,
  `card.location.adb046`(아컴 조우 카드), `card.gate.adb052`(다른 세계 조우 카드), `card.mythos.blood_magic`, `enc.location.adb046.1`(카드 안의 조우)
- 모든 레코드에 `set_id`(현재 모두 `base`; 프로모 변형 고대의 존재 시트만 `promo`), `aliases`, `source_ids`(출처별 원래 ID/위치), `field_status` 가 있습니다.
- 영문 원문을 그대로 저장합니다. 번역은 원문 필드를 바꾸지 않고 `translations` 테이블(`entity_id, field, lang, text, status, translator, updated_at`)에 추가하도록 설계했습니다(현재 비어 있음).
- 알 수 없는 수치는 0이 아니라 **`null` + `field_status` 에 사유**로 둡니다.
- **인쇄 수량과 레코드 수를 구분**합니다: 카드 레코드 1개 = 서로 다른 카드 1종, `copies` = 기본판에 인쇄된 장수.

### `field_status` 상태 어휘 (`ah2e/resolve.py`)

| 상태 | 의미 |
|---|---|
| `confirmed` | 서로 다른 계보의 출처 2개 이상이 일치 |
| `confirmed_minor_variants` | 철자·대소문자·문장부호 차이뿐(이문은 `minor_variants` 에 기록) |
| `single_source` | 한 계보의 출처만 값을 제공 |
| `errata_applied` | 공식 FAQ 정오표 값 적용(원래 값·출처별 값 함께 기록) |
| `conflict_resolved` | 값이 다름 → ①카드 이미지/공식 문서 ②독립 출처 그룹 과반 규칙으로 결정, 모든 대안 기록 |
| `conflict` | 텍스트가 실질적으로 다름(유사도 < 0.85) → 우선 출처 문구 유지, 표시 |
| `conflict_unresolved` | 결정 근거 없음 → 값 `null` |
| `derived` | 다른 데이터나 규칙 문장에서 파생(사유 기록) |
| `missing` | 필수 값인데 출처 없음 → `null` |
| `none_recorded` | 선택 필드에 어느 출처도 값이 없음(보통 ‘인쇄된 것이 없음’) |

같은 계보(helper 스냅샷·위키 스크랩·위키 검색 요약은 모두 `fandom_lineage`)는 독립 확인으로 세지 않습니다.

### JSON 최상위 키 (`data/ah2e_base.json`)

| 키 | 내용 |
|---|---|
| `meta` | 스키마 버전, 생성 시각, 범위, 규칙서/FAQ 판본 |
| `sets` | 기본판 + 확장판 식별자 목록 |
| `sources`, `documents` | 출처(커밋 SHA·라이선스·독립성 그룹), 공식 문서(URL·SHA-256·쪽수) |
| `components` | 규칙서 p.2 구성물 수량(상하위 관계, 인용문) |
| `reference` | 규칙서 참조 표: 몬스터 이동 유형, 몬스터 특수 능력, 각성 차원문 수, 몬스터 한도, 외곽 한도, 공포 단계 효과, 장소 안정성, 보드 구조, 차원 기호 표기 |
| `neighborhoods`, `areas` | 지역 9(조우 카드 뒷면 색), 거리 구역 9 + 특수 구역 3(Outskirts, The Sky, Lost in Time and Space) |
| `locations` | 장소 27: `neighborhood_id`, `kind`(`board_location`/`encounter_only`), `stability`, `encounter_icons`, `special_ability_text`, `home_of_investigator_ids` |
| `board_connections` | 인접 그래프 — **미확보(빈 배열)** |
| `other_worlds` | 다른 세계 8: `encounter_colors`, `areas` |
| `investigators` | 이름·직업·정신력·체력·집·집중력, `fixed_possessions`(돈·단서·지정 카드→`card_id`·특수 카드·축복), `random_possessions`(덱별 장수), `ability`(이름·단계·본문), `sliders`(3쌍 × 4칸) |
| `ancient_ones` | 전투 수치(`combat_rating` 원문 + 정수값), 파멸 트랙, 방어(`defenses`), 숭배자 본문과 대상 몬스터, 힘, 전투 시작, 공격 |
| `ancient_one_variants` | 같은 이름의 다른 판본 시트(위키 수록 프로모) — 합치지 않고 별도 보관 |
| `monsters` | 29종(인쇄 60개): `count`, `awareness`, `movement_type`(+`border_color`), `dimension_symbol`, 공포/전투 판정·피해, `toughness`, `abilities`(`overwhelming_1` 처럼 X값 포함), `rules_text`, `flavor_text`, `image_refs`(위키 파일 이름). 인쇄 숫자가 없는 칸은 `null` + `none_recorded` |
| `cards` | 모든 카드: `card_type` = `location`·`gate`·`mythos`·`common_item`·`unique_item`·`spell`·`skill`·`ally`·`special` 와 종류별 필드(가격·손·시전 수정치·정신력 비용·보너스·`checks` 등). 신화: `mythos_type`, `environment_subtype`, `gate_location_ids`, `gate_burst`, `clue_location_id`, `monster_movement.white/black`, `activity_area_ids`, `closes_area_ids`, `is_deck_reshuffle`, 소문 `ongoing_effect/pass_condition/fail_condition`. 축복/저주는 양면 카드(`faces`) |
| `encounters` | 카드 안의 개별 조우: `card_id`, `seq`, `location_id` 또는 `other_world_id`, `applies_to`(`location`/`other_world`/`other_worlds_of_card_color`/`deck_rule`), `text`, `text_html`(출처 마크업), `checks`(판정 기능·수정치·난이도 추출) |
| `errata` | FAQ 정오표 10건(쪽, 인용, 원래/수정 값, 인용 검증 여부) |
| `images` | 이미지 링크(고정 커밋 URL, SHA-256, 연결 엔티티, 용도) |
| `conflicts`, `missing`, `unresolved_references` | 출처 충돌 목록, 누락 목록, 매핑 실패 이름 |
| `translations` | 번역 테이블(비어 있음) |

`checks` 는 본문에서 `Luck (-1) check`, `Will (-1) [2] check` 같은 표기만 뽑은 보조 정보입니다. 효과 실행 로직은 파싱하지 않았습니다.

### SQLite (`data/ah2e_base.sqlite`)

정규화 테이블: `neighborhoods, areas, locations, location_icons, board_connections, other_worlds, other_world_colors, cards, card_faces,
mythos_gate_locations, mythos_movement, mythos_areas, encounters, skill_checks, investigators, investigator_fixed_cards,
investigator_special_cards, investigator_random, investigator_sliders, ancient_ones, ancient_one_defenses, ancient_one_variants,
monsters, monster_abilities, components, reference_tables, errata, entity_errata`
출처·상태: `sources, documents, field_status, conflicts, missing, images, aliases, source_ids, records`(레코드 원문 JSON), `meta`, `sets`, `translations`.
외래키를 선언하고 `PRAGMA foreign_key_check` 와 JSON↔SQLite 레코드 일치를 export 단계에서 검사합니다.

```sql
-- 예: Downtown 조우 카드 한 장의 세 조우
SELECT e.seq, l.name, e.text FROM encounters e JOIN locations l ON l.id = e.location_id
WHERE e.card_id = 'card.location.adb088' ORDER BY e.seq;
-- 예: 출처가 하나뿐인 필드
SELECT entity_id, field FROM field_status WHERE status = 'single_source';
```

## 수동 입력(`manual/`)

| 파일 | 내용 | 검증 방법 |
|---|---|---|
| `investigator_sheets.json` | 조사자 시트 16장 판독(집·소지품·집중력·능력·슬라이더). 스캔에 정신력/체력 숫자가 지워져 있어 이 둘은 미판독 | 이미지 경로·SHA-256 연결, Kuerv0 등과 자동 대조 |
| `ancient_one_sheets.json` | 고대의 존재 시트 8장 판독 | 위와 같음 |
| `errata_base.json` | FAQ v2.0 기본판 정오표 10건 | 인용문이 FAQ PDF 텍스트에 있는지 자동 검사 |
| `rulebook_reference.json` | 규칙서 참조 표 | 인용문이 규칙서 PDF 텍스트에 있는지 자동 검사 |
| `web_search_evidence.json` | 위키 차단 중 검색엔진 요약에서 얻은 값 | 원문 아님 — 위키 원문과 자동 재대조(통합 단계, `meta.web_search_recheck`) |

## 위키(fandom) 수집

`fetch` 는 `arkham-horror-second-edition.fandom.com/api.php`(MediaWiki API)만 씁니다. `/wiki/` HTML 페이지는 Cloudflare 봇 확인(403)을 돌려주고,
위키 이미지 호스트(`static.wikia.nocookie.net`)는 이 환경의 네트워크 정책이 막고 있어 이미지는 받지 않습니다.

- 수집 대상(`ah2e/config.py` 의 `fandom_wiki`): 시드 페이지(목록 표가 있는 `Common Item`·`Unique Item`·`Spell`·`Skill`·`Ally` 등),
  카테고리(위키의 실제 이름: `Common items`, `Unique items` …), `Template:MonsterInfoBox`·`Template:Investigator` 를 쓰는 페이지,
  목록 표에서 확장판 아이콘이 없는 행(=기본판)이 링크한 카드 페이지. 페이지는 `sources/raw/fandom_wiki/pages/<제목>.json` 에 wikitext로 저장되고
  `sources/manifest.json` 에 revid·SHA-256이 남습니다. 이미 받은 페이지는 다시 받지 않으므로, 최신판이 필요하면 해당 파일을 지우고 온라인으로 실행합니다.
- 파싱(`ah2e/parsers/fandom_wiki.py`): 템플릿 파라미터, 위키 표, `'''라벨''': 값` 줄을 일반적으로 추출합니다. 해석은 `ah2e/wiki.py` 에 있습니다.
- 몬스터: `AHCount > 0` 인 `MonsterInfoBox` = 기본판 마커. 테두리 색 → 이동 유형(위키 `Template:Monster` 의 대응표), `HomeDimension` → 차원 기호.
  빈칸/‘-’는 ‘인쇄된 숫자 없음’으로 해석해 `none_recorded` 로 둡니다(마커 이미지로는 미확인).
- 위키는 helper 스냅샷·위키 스크랩·검색 요약과 같은 `fandom_lineage` 그룹이라, 이들끼리 일치해도 독립 확인으로 세지 않습니다.
- 위키에서도 찾지 못한 것: 보드 인접 관계(노란 선), 차원문 마커 16개의 세계·수정치(위키 `Gate marker` 페이지는 확장판이 섞인 이미지 갤러리뿐).
  이 둘은 보드·마커를 직접 보고 `manual/` 에 옮기는 수동 입력이 필요합니다.

## 저작권

카드 문구·규칙서·이미지는 Fantasy Flight Games의 저작물입니다. 이 저장소는 게임을 소유한 사용자의 개인 오프라인 용도를 위한 데이터 정리이며,
각 출처 저장소의 라이선스는 `sources/manifest.json` 에 기록했습니다. 이미지 파일과 PDF 원본은 저장소에 포함하지 않았습니다.
`sources/raw/fandom_wiki/pages/` 의 wikitext는 Arkham Horror (Second Edition) Wiki(Fandom) 기여자들의 글로 CC BY-SA 라이선스를 따릅니다.
페이지별 원래 URL과 revid는 각 파일과 `sources/manifest.json` 에 있습니다.
