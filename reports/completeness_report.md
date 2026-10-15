# 아컴호러 2판(2005) 기본판 데이터 — 완성도 보고서

- 생성: `2026-10-15T02:05:24+00:00` (스키마 1.0.0) — `python -m ah2e all` 로 재생성
- 범위: Arkham Horror 2nd Edition 기본판만. LCG(카드게임)·3판 자료는 사용하지 않음. 확장판은 `set_id` 로 식별만 가능하고 통합하지 않음.
- 데이터 파일: `data/ah2e_base.json`(출처·상태 포함 원본), `data/ah2e_base.sqlite`(동일 내용), `data/ah2e_base.game.json`(출처 정보 제외 경량본)

## 1. 요약

검증 결과: 통과 42 · 실패 0 · 미완성(incomplete) 2 · 경고 1. 실패 0은 **무결성·구조 검사**가 통과했다는 뜻이며, **전체 DB 완성을 뜻하지 않는다** — 아래 미완성 항목이 남아 있다.

| 구분 | 상태 |
|---|---|
| 데이터 존재 | 조사자 16/16, 고대의 존재 8/8, 장소 27(보드 26 + 조우 전용 Inner Sanctum), 지역 9, 다른 세계 8, 아컴 조우 카드 63장/본문 189, 다른 세계 조우 카드 49장/본문 145, 신화 카드 67, 조사자 카드 189장(서로 다른 카드 87종), 정오표 10건, 몬스터 마커 60개(29종). **보드 연결·차원문 마커 구성은 없음.** |
| 구조 | 카드 1장 = 조우 3개(장소/다른 세계) 구조, 재섞기 카드, 신화 카드 위치·이동 기호, 조사자 슬라이더가 원본 행과 대조 검증됨 |
| 수량 | 아래 표 — 차원문 마커 외 모든 구성물이 공식 수량과 일치 |
| 정확성 | 필드마다 상태 기록(§4). 단일 출처 값 576개, 규칙으로 해결한 충돌 33건, 텍스트 충돌 5건. 위키 차단 중 쓴 검색 요약은 위키 원문으로 재확인(§7) |

## 2. 종류별 예상 수량 vs 확보 수량

공식 수량은 핵심 규칙서 p.2 구성물 목록(`data` 의 `components`, 상·하위 합계 검증 완료)에서 추출. ‘레코드’는 서로 다른 카드/항목 수, ‘인쇄 수량’은 레코드별 `copies` 합계다.

| 구성물 | 공식 수량 | 레코드 수 | 데이터상 인쇄 수량 | 결과 |
|---|---|---|---|---|
| Location Cards | 63 | 63 | 63 | 일치 |
| Gate Cards | 49 | 49 | 49 | 일치 |
| Mythos Cards | 67 | 67 | 67 | 일치 |
| Common Items | 44 | 22 | 44 | 일치 |
| Unique Items | 39 | 26 | 39 | 일치 |
| Spells | 40 | 11 | 40 | 일치 |
| Skills | 20 | 10 | 20 | 일치 |
| Allies | 11 | 11 | 11 | 일치 |
| Special Cards | 35 | 7 | 35 | 일치 |
| Investigator Sheets | 16 | 16 | 16 | 일치 |
| Ancient One Sheets | 8 | 8 | 8 | 일치 |
| Monster Markers | 60 | 29 | 60 | 일치 |
| Gate Markers | 16 | 0 | 0 | **미완성** |

- 조우 본문: 아컴 189/189, 다른 세계 145/145 (데이터/arkhamdb 기본판 행). 이전 조사 수치(장소 27, 아컴 카드 63·본문 189, 다른 세계 카드 49·본문 145)를 SQL에서 직접 재검증함.
- 합계: 조사자 카드 189/189, 고대의 존재 카드 179/179.
- 도우미 프로젝트(helper)의 ‘신화 66장 / 다른 세계 48장’ 차이 설명: helper는 기본판 신화 카드 *R'lyeh Rising* 을 Dunwich Horror로 분류했고(다른 3개 출처는 기본판, 공식 67장 수량도 이 카드를 포함해야 맞음), 다른 세계 덱 재섞기 카드 *The Stars are Right* 가 빠져 있다.

## 3. 출처

| id | 종류 | 저장소 | 커밋 | 상태 | 독립성 그룹 | 역할 |
|---|---|---|---|---|---|---|
| arkhamdb_sql | github | https://github.com/generalpf/arkhamdb | 13e485e2d88f | ok | arkhamdb | 조우 카드·장소·다른 세계 (기준 출처) |
| helper_snapshot | github | https://github.com/Oakraven79/arkham-horror-2e-helper | 350ddf1594f9 | ok | fandom_lineage | 신화·장소·지역 색·고대의 존재 |
| helper_wiki_scrape | github | https://github.com/Oakraven79/arkham-horror-2e-helper | 350ddf1594f9 | ok | fandom_lineage | 2판 위키(fandom) 스크랩 사본: 신화·장소·고대의 존재 |
| official_docs | github | https://github.com/Oakraven79/arkham-horror-2e-helper | 350ddf1594f9 | ok | official | 공식 규칙서·FAQ PDF |
| jesseflorig_json | github | https://github.com/jesseflorig/arkham-horror-json | a9c7bf6cc9a0 | ok | jesseflorig | 동료·고대의 존재·신화(부분), 고대의 존재 시트 이미지 |
| kuerv0_json | github | https://github.com/Kuerv0/arkham | fbdb3a8e6f34 | ok | kuerv0 | 조사자·조사자 카드 전체·조우·신화 |
| ellebaum_json | github | https://github.com/ellebaum/AHTools | e91c99b2d18f | ok | ellebaum | 신화 67·다른 세계 조우 49 |
| gorlith_android | github | https://github.com/Gorlith/Arkham-Horror-Helper | 1e98a1345d13 | ok | gorlith | 조사자 시트 이미지 16장 + 정신력/체력 표 |
| pavelius_cpp | github | https://github.com/Pavelius/arkham | 36a5621babf8 | ok | pavelius | 일반 아이템 가격·몬스터 3종(부분, Zombie 행은 오류로 제외) |
| fandom_wiki | mediawiki |  |  | ok | fandom_lineage | 2판 위키 MediaWiki API 직접 수집: 몬스터 전체·조사자 시트·조사자 카드 목록 표·카드 페이지 |
| card_image | manual |  |  | ok | card_image | 카드/시트 이미지 수동 판독 |
| web_search_fandom | manual |  |  | ok | fandom_lineage | 위키 검색엔진 요약(위키 차단 기간 동점 해소용) — 위키 원문으로 대체·재확인됨 |

- 각 파일의 URL·SHA-256·수집 시각은 `sources/manifest.json`, 출처별 파싱 결과는 `sources/parsed/*.json`, 원본 사본은 `sources/raw/` 에 있다.
- 같은 계보(예: helper 스냅샷·위키 스크랩·위키 검색 요약)는 하나의 독립성 그룹으로 묶어, 서로 베낀 값이 ‘확정’으로 부풀려지지 않게 했다.
- 사용하지 않은 출처: ArkhamDB.com(Arkham Horror: The Card Game (LCG) - different game; excluded by requirement.); Kamalisk/arkhamdb-json-data(LCG data - excluded by requirement.); Fenyx4/arkham-companion & DeckardSix/arkham-companion (Init.java)(2e encounter decks embedded in Java SQL strings; identified but not parsed in this run (encounters already covered by 4 sources).); ellebaum/AHTools *.rb(Arkham encounters grouped by location, not by card - cannot rebuild 3-encounter cards; only the JSON files are used.)
- 네트워크: The build environment's egress policy returned HTTP 403 for: www.fantasyflightgames.com, images-cdn.fantasyflightgames.com, boardgamegeek.com, web.archive.org, rulespal.com, cdn.1j1ju.com and the wiki image host static.wikia.nocookie.net (checked 2026-10-14/15). arkham-horror-second-edition.fandom.com was blocked on 2026-10-14 and allowed from 2026-10-15; its MediaWiki API (api.php) answers, while HTML pages under /wiki/ return a Cloudflare bot challenge (HTTP 403), so only the API is used.
- fandom 위키 직접 수집: 상태 `ok`, 페이지 470개(`sources/raw/fandom_wiki/pages/`, 페이지별 revid·SHA-256은 manifest), 수집 경로 Category:Investigators 41, Category:Ancient Ones 26, Category:Common items 38, Category:Unique items 55, Category:Spells 27, Category:Skills 34, Category:Allies 52, Category:Specials 37, Category:Other Worlds 16, Category:Neighborhoods 23, Template:MonsterInfoBox 84, Template:Investigator 48, base rows of list pages 80. `/wiki/` HTML은 Cloudflare 봇 확인(403)이라 API만 쓴다.

### 출처별 기본판 기여(레코드 수)

| 종류 | 통합 레코드 | arkhamdb_sql | helper_snapshot | helper_wiki_scrape | official_docs | jesseflorig_json | kuerv0_json | ellebaum_json | gorlith_android | pavelius_cpp | fandom_wiki | card_image |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| investigators | 16 |  |  |  |  |  | 16 |  | 16 | 2 | 16 | 16 |
| ancient_ones | 8 |  | 8 | 8 |  | 8 |  |  |  |  |  | 8 |
| locations | 27 | 27 | 27 | 27 |  | 3 |  |  |  |  |  |  |
| cards:location | 63 | 63 | 63 |  |  | 7 | 63 |  |  |  |  |  |
| cards:gate | 49 | 49 | 48 |  |  |  | 49 | 49 |  |  |  |  |
| cards:mythos | 67 |  | 67 | 67 |  | 67 | 66 | 67 |  |  |  |  |
| cards:common_item | 22 |  |  |  |  |  | 22 |  |  | 22 | 22 |  |
| cards:unique_item | 26 |  |  |  |  |  | 26 |  |  |  | 26 |  |
| cards:spell | 11 |  |  |  |  |  | 11 |  |  | 11 | 11 |  |
| cards:skill | 10 |  |  |  |  |  | 10 |  |  | 9 |  |  |
| cards:ally | 11 |  |  |  |  | 11 | 11 |  |  |  |  |  |
| cards:special | 7 |  |  |  | 7 |  | 7 |  |  |  |  |  |
| monsters | 29 |  |  |  |  |  |  |  |  | 3 | 29 |  |

숫자는 해당 출처가 값이나 매칭 레코드를 제공한 통합 레코드 수(필드 단위 기여 포함)다.

### 공식 문서

| doc_id | 제목 | 구분 | URL | SHA-256(앞 16자) | 쪽수 |
|---|---|---|---|---|---|
| core_rulebook | Arkham Horror Rulebook (2nd edition, FFG) | 공식 | https://images-cdn.fantasyflightgames.com/filer_public/e8/17/e817095d-ac80-482b-867b-41b2e41a57f1/arkham_horror_core_rulebook.pdf | 97bd20dd2dca5fe7 | 24 |
| complete_faq | Complete Arkham Horror FAQ (FFG) | 공식 | — | 0c7a5fea0f4aa77f | 43 |
| eog_rules_summary | Esoteric Order of Gamers - Arkham Horror rules summary & reference v7.6 (Oct 2017) | 비공식 | https://www.orderofgamers.com | 150c6c7c068f1c5c | 20 |

- 규칙서 판본: PDF 본문 저작권 표기 `© 2005, 2006 Fantasy Flight Publishing` → 2006년 개정 인쇄본 규칙서. 2005년 초판 규칙서는 확보하지 못했다.
- FAQ 판본: `v2.0 December 5, 2012` (본문 첫 줄).
- 규칙서·FAQ에서 옮긴 값(정오표 10건, 참조 표 10개)은 인용문이 PDF 텍스트에 그대로 있는지 자동 검사한다: 32건 모두 통과.

## 4. 필드 상태 통계

| 종류 | confirmed | confirmed_minor_variants | single_source | conflict_resolved | conflict | errata_applied | derived | none_recorded | missing |
|---|---|---|---|---|---|---|---|---|---|
| ancient_ones | 63 | 1 |  |  |  |  | 16 |  |  |
| areas | 3 |  |  |  |  |  | 9 |  |  |
| cards.ally | 43 |  | 11 | 1 |  |  |  |  |  |
| cards.common_item | 97 | 1 | 21 | 3 |  | 2 |  | 8 |  |
| cards.gate | 97 |  |  |  |  |  | 50 |  |  |
| cards.location | 63 |  |  |  |  |  | 63 |  |  |
| cards.mythos | 450 | 23 | 87 | 7 | 3 |  |  | 119 |  |
| cards.skill | 9 |  | 27 |  |  |  |  | 4 |  |
| cards.special | 4 |  | 3 |  |  |  | 1 |  |  |
| cards.spell | 48 | 2 | 10 | 4 |  | 2 |  |  |  |
| cards.unique_item | 112 | 1 | 24 | 3 |  | 3 |  | 14 |  |
| encounters | 316 | 16 |  |  | 1 | 1 |  |  |  |
| investigators | 305 | 3 |  | 10 |  | 2 |  |  |  |
| locations | 30 |  | 62 |  |  |  | 1 | 15 |  |
| monsters | 11 |  | 305 | 1 |  |  | 1 | 31 |  |
| neighborhoods | 9 |  | 18 |  |  |  |  |  |  |
| other_worlds | 5 |  | 8 | 3 |  |  |  |  |  |

상태 의미: `confirmed` 확정(독립 출처 2개 이상 일치); `confirmed_minor_variants` 확정(철자·문장부호 차이만 있음); `single_source` 단일 출처; `conflict_resolved` 충돌→규칙으로 결정; `conflict` 텍스트 충돌(우선 출처 유지); `conflict_unresolved` 충돌 미해결(null); `errata_applied` 정오표 적용; `derived` 파생/해석; `missing` 누락(null); `none_recorded` 기록 없음(선택 필드).

## 5. 누락 항목과 필드

| 대상 | 필드 | 사유 |
|---|---|---|
| board | connections | No reachable source provides the adjacency graph: movement is along the yellow lines printed on the game board (core rulebook p.6). The fandom wiki was checked (2026-10-15): neighborhood pages list their locations but no street-to-street links, and no page tabulates the board's lines or monster-movement arrows. Table left empty. |
| gate_markers | composition | 16 gate markers (official count) but no source lists each marker's Other World and close/seal modifier. The fandom wiki 'Gate marker' page (checked 2026-10-15) only has an image gallery: its 'Original Gate Markers' section mixes base and Dunwich Horror worlds (Another Time, Lost Carcosa, The Underworld, Unknown Kadath) and states no modifiers in text; the images are on a blocked host. |

- 몬스터: 위키에서 `MonsterInfoBox` 를 쓰는 페이지 중 기본판 수량(`AHCount`)이 있는 29종, 마커 60개(공식 60개와 일치). 수치는 위키 한 계보뿐이라 대부분 **단일 출처**이고, `pavelius_cpp` 와 독립 확인된 것은 Byakhee 뿐이다. pavelius의 Zombie 행은 위키의 Chthonian 수치와 완전히 같아(그 Chthonian 행은 비어 있음) 잘못 들어간 행으로 보고 Zombie의 근거에서 뺐다(충돌 기록 `_pavelius_row`).
- 몬스터 빈칸(값이 인쇄되지 않음, `none_recorded`): Cultist horror_rating, Cultist horror_damage, Dimensional Shambler combat_damage, Fire Vampire horror_rating, Fire Vampire horror_damage, Maniac horror_rating, Maniac horror_damage, Nightgaunt combat_damage, The Black Man horror_rating, The Black Man horror_damage, The Black Man combat_rating, The Black Man combat_damage, Witch horror_rating, Witch horror_damage. 위키 infobox가 빈칸이나 '-'로 둔 칸을 ‘마커에 숫자가 인쇄되지 않음’으로 해석했다(특수 규칙이 있으면 `rules_text`). 마커 이미지로는 확인하지 못한 해석이며, 필수값 검사에서는 누락 대신 ‘기록된 빈칸’으로 따로 보고한다.
- 몬스터 이름 *The Dark Pharaoh*: 위키는 확장판 이름까지 ‘Pharoah’로 잘못 쓰고 있어 공식 표기 ‘Pharaoh’로 고쳤다(`field_status.name` = `derived`, 위키 표기는 `aliases`).
- 보드 연결(거리·장소 인접 관계)과 차원문 마커 16개의 세계·수정치 구성은 위키를 포함한 어떤 접근 가능한 출처에도 없어 비워 두었다(사유는 위 표).
- `none_recorded` 는 선택 필드(예: 특수 능력이 없는 장소, 활동 표시가 없는 신화 카드)에 어느 출처도 값을 두지 않은 경우로, 누락과 구분한다.

## 6. 출처 간 충돌

| 대상 | 필드 | 상태 | 선택 | 근거 | 대안(값 ← 출처) |
|---|---|---|---|---|---|
| ow.yuggoth | encounter_colors | conflict_resolved | ["blue", "yellow"] | majority of independent source groups (4 vs 1) | ["blue", "yellow"] ← arkhamdb_sql,ellebaum_json,helper_snapshot,kuerv0_json; ["blue", "green"] ← helper_snapshot |
| ow.great_hall_of_celeano | encounter_colors | conflict_resolved | ["blue", "green"] | majority of independent source groups (4 vs 1) | ["blue", "green"] ← arkhamdb_sql,ellebaum_json,helper_snapshot,kuerv0_json; ["blue"] ← helper_snapshot |
| ow.dreamlands | encounter_colors | conflict_resolved | ["blue", "green", "red", "yel… | majority of independent source groups (4 vs 1) | ["blue", "green", "red", "yellow"] ← arkhamdb_sql,ellebaum_json,helper_snapshot,kuerv0_json; ["green"] ← helper_snapshot |
| enc.gate.adb049.3 | text | conflict | arkhamdb_sql | substantially different wording; text of the priority source kept | Pass a Luck (-1) check to find the gate… ← arkhamdb_sql; Pass a Luck (-1) check to find the gate… ← kuerv0_json |
| card.mythos.strange_lights_on_campus | card_match | duplicate_record | null | kuerv0_json lists this card twice (text similarity 1.00); second record ignored | null ← kuerv0_json |
| card.mythos.estate_sale | name | conflict_resolved | Estate Sale | kuerv0_json record titled 'The Stars Are Right' has the text of this card (similarity 0.9… | The Stars Are Right ← kuerv0_json |
| card.mythos.blood_magic | clue_location_id | conflict_resolved | loc.unnamable | majority of independent source groups (3 vs 1) | loc.unnamable ← ellebaum_json,helper_snapshot,helper_wiki_scrape,jesseflorig_json; ?Rivertown Streets ← kuerv0_json |
| card.mythos.good_work_undone | text | conflict | helper_wiki_scrape | substantially different wording; text of the priority source kept | When this card enters play, place 6 Clu… ← helper_wiki_scrape; When this card enters play, place 6 Clu… ← jesseflorig_json |
| card.mythos.happy_days_are_here_again | monster_movement_white | conflict_resolved | ["diamond", "square"] | majority of independent source groups (3 vs 1) | ["diamond", "square", "triangle"] ← helper_snapshot,helper_wiki_scrape; ["diamond", "square"] ← ellebaum_json,jesseflorig_json,kuerv0_json |
| card.mythos.icy_conditions | text | conflict | helper_wiki_scrape | substantially different wording; text of the priority source kept | Investigators receive 1 less movement p… ← helper_wiki_scrape; Investigators recive 1 less movement po… ← jesseflorig_json |
| card.mythos.manhunt_in_arkham | text | conflict | helper_wiki_scrape | substantially different wording; text of the priority source kept | All monsters in locations are returned … ← helper_wiki_scrape; An old basement is opened, releasing 2 … ← kuerv0_json |
| card.mythos.missing_people_return | monster_movement_white | conflict_resolved | ["slash", "star", "triangle"] | majority of independent source groups (3 vs 1) | ["slash", "star", "triangle"] ← helper_snapshot,helper_wiki_scrape,jesseflorig_json,kuerv0_json; ["slash", "square", "star"] ← ellebaum_json |
| card.mythos.rlyeh_rising | set_id | conflict_resolved | base | filed as base by ellebaum_json, jesseflorig_json, kuerv0_json (independent groups: 3); th… | base ← ellebaum_json,jesseflorig_json,kuerv0_json; dunwich_horror ← helper_snapshot; dunwich_horror ← helper_wiki_scrape |
| card.mythos.southside_strangler_suspected | monster_movement_white | conflict_resolved | ["circle"] | majority of independent source groups (3 vs 1) | ["circle"] ← ellebaum_json,helper_snapshot,helper_wiki_scrape,jesseflorig_json; ["plus"] ← kuerv0_json |
| card.mythos.temperence_fever_sweeps_city | clue_location_id | conflict_resolved | loc.black_cave | majority of independent source groups (3 vs 1) | loc.black_cave ← ellebaum_json,helper_snapshot,helper_wiki_scrape,jesseflorig_json; loc.hibbs_roadhouse ← kuerv0_json |
| card.mythos.temperence_fever_sweeps_city | monster_movement_black | conflict_resolved | ["slash", "star", "triangle"] | majority of independent source groups (3 vs 1) | ["slash", "star", "triangle"] ← ellebaum_json,helper_snapshot,helper_wiki_scrape,jesseflorig_json; ["?Black", "?Cave"] ← kuerv0_json |
| inv.amanda_sharpe | sanity | conflict_resolved | 5 | majority of independent source groups (2 vs 1) | 5 ← fandom_wiki,kuerv0_json; 4 ← gorlith_android |
| inv.amanda_sharpe | random_possessions.skill | conflict_resolved | 2 | authoritative source (card_image) | 2 ← card_image,fandom_wiki; 3 ← kuerv0_json |
| inv.ashcan_pete | sanity | conflict_resolved | 4 | majority of independent source groups (3 vs 1) | 4 ← fandom_wiki,kuerv0_json,pavelius_cpp; 5 ← gorlith_android |
| inv.bob_jenkins | random_possessions.common_item | conflict_resolved | 2 | authoritative source (card_image) | 2 ← card_image,fandom_wiki; 3 ← kuerv0_json |
| inv.carolyn_fern | stamina | conflict_resolved | 4 | majority of independent source groups (2 vs 1) | 4 ← fandom_wiki,kuerv0_json; 5 ← gorlith_android |
| inv.dexter_drake | random_possessions.spell | conflict_resolved | 2 | authoritative source (card_image) | 2 ← card_image,fandom_wiki,kuerv0_json; 3 ← kuerv0_json |
| inv.dexter_drake | random_possessions.skill | conflict_resolved | 1 | authoritative source (card_image) | 1 ← card_image,fandom_wiki,kuerv0_json; 2 ← kuerv0_json |
| inv.gloria_goldberg | stamina | conflict_resolved | 4 | majority of independent source groups (2 vs 1) | 4 ← fandom_wiki,kuerv0_json; 5 ← gorlith_android |
| inv.gloria_goldberg | fixed_possessions.clue_tokens | conflict_resolved | 2 | authoritative source (card_image) | 2 ← card_image,fandom_wiki; 7 ← kuerv0_json |
| inv.joe_diamond | fixed_possessions.money | conflict_resolved | 8 | authoritative source (card_image) | 8 ← card_image,fandom_wiki,kuerv0_json; 7 ← pavelius_cpp |
| card.ally.anna_kaslow | bonus_text | conflict_resolved | +2 Luck | majority of independent source groups (2 vs 1) | +2 Luck ← jesseflorig_json,kuerv0_json; +2 Sneak ← kuerv0_json |
| card.common.45_automatic | price | conflict_resolved | 5 | majority of independent source groups (2 vs 1) | 5 ← fandom_wiki,kuerv0_json; 4 ← pavelius_cpp |
| card.common.dynamite | price | conflict_resolved | 4 | majority of independent source groups (2 vs 1) | 4 ← fandom_wiki,kuerv0_json; 2 ← pavelius_cpp |
| card.common.lucky_cigarette_case | price | conflict_resolved | 1 | majority of independent source groups (2 vs 1) | 1 ← fandom_wiki,kuerv0_json; 2 ← pavelius_cpp |
| card.spell.mists_of_releh | sanity_cost | conflict_resolved | 0 | majority of independent source groups (2 vs 1) | 1 ← kuerv0_json; 0 ← fandom_wiki,kuerv0_json |
| card.spell.voice_of_ra | copies | conflict_resolved | 3 | majority of independent source groups (2 vs 1) | 4 ← kuerv0_json; 3 ← fandom_wiki,kuerv0_json |
| card.spell.voice_of_ra | hands | conflict_resolved | 0 | majority of independent source groups (2 vs 1) | 0 ← fandom_wiki,kuerv0_json; 1 ← kuerv0_json |
| card.spell.wither | copies | conflict_resolved | 6 | majority of independent source groups (2 vs 1) | 5 ← kuerv0_json; 6 ← fandom_wiki,kuerv0_json |
| card.unique.healing_stone | text | conflict | kuerv0_json | substantially different wording; text of the priority source kept | Upkeep: Exhaust to gain 1 Stamina or 1 … ← kuerv0_json; Upkeep Phase: You may gain 1 Stamina or… ← kuerv0_json |
| card.unique.the_king_in_yellow | copies | conflict_resolved | 2 | majority of independent source groups (2 vs 1) | 3 ← kuerv0_json; 2 ← fandom_wiki,kuerv0_json |
| card.unique.warding_statue | copies | conflict_resolved | 1 | majority of independent source groups (2 vs 1) | 0 ← kuerv0_json; 1 ← fandom_wiki,kuerv0_json |
| card.unique.warding_statue | _presence | conflict_resolved | present | present in Kuerv0 per-type file but absent from Kuerv0 base-game.json deck list; kept bec… | present ← kuerv0_json; absent ← kuerv0_json |
| mon.zombie | _pavelius_row | conflict_resolved | fandom_wiki | pavelius_cpp row filed under Zombie carries exactly the wiki statistics of Chthonian (and… | {"count": 2, "awareness": 1, "horror_ra… ← pavelius_cpp; {"count": 3, "awareness": 1, "horror_ra… ← fandom_wiki |

결정 규칙(`ah2e/resolve.py`): ① 공식 정오표 ② 카드/시트 이미지 판독 또는 공식 문서 ③ 독립 출처 그룹의 과반(동점이면 null). 텍스트는 우선 출처 문구를 유지하되 유사도 0.85 미만이면 `conflict` 로 표시하고 모든 이문을 남긴다.

## 7. 추가 확인이 필요한 항목

1. **검색 요약 재확인(완료)** — 위키 차단 중 동점 해소에 쓴 `WebSearch` 요약 주장 52개를 수집한 위키 원문(wikitext)과 대조했다: 일치 52, 불일치 0, 위키에 없음 0. 통합 단계는 이제 위키가 같은 필드를 줄 때 요약 대신 위키 원문을 쓴다(`meta.web_search_recheck`).
   위키 계보가 과반을 만들어 결정된 값(12건, 위키 원문 기준으로 다시 확인됨):
   - `inv.amanda_sharpe` sanity → 5
   - `inv.carolyn_fern` stamina → 4
   - `inv.gloria_goldberg` stamina → 4
   - `card.common.45_automatic` price → 5
   - `card.common.dynamite` price → 4
   - `card.common.lucky_cigarette_case` price → 1
   - `card.spell.mists_of_releh` sanity_cost → 0
   - `card.spell.voice_of_ra` copies → 3
   - `card.spell.voice_of_ra` hands → 0
   - `card.spell.wither` copies → 6
   - `card.unique.the_king_in_yellow` copies → 2
   - `card.unique.warding_statue` copies → 1
2. **이미지 수동 판독 값** — 조사자 시트 16장·고대의 존재 시트 8장은 사람이 읽어 `manual/*.json` 에 옮겼다(OCR 아님). 시트 이미지에는 정신력/체력 숫자가 지워져 있어 이 두 값은 다른 출처(Kuerv0·위키 조사자 템플릿·Gorlith·pavelius)로 정했다.
3. **단일 출처 필드** — 고유 아이템·기술·주문 본문은 Kuerv0 하나에만 있다(수량·가격·손 수·주문 수치는 위키 목록 표로 확인됨). 몬스터 수치(Byakhee 제외), 장소 아이콘/안정성/특수 능력, 지역 카드 색, 신화 `gate_burst` 는 위키 계보 하나뿐이다.
4. **텍스트 충돌** — 아래는 우선 출처 문구를 유지했지만 다른 출처와 실질적으로 다르다:
   - `enc.gate.adb049.3` (kuerv0_json 0.73)
   - `card.mythos.good_work_undone` (jesseflorig_json 0.60)
   - `card.mythos.icy_conditions` (jesseflorig_json 0.77)
   - `card.mythos.manhunt_in_arkham` (kuerv0_json 0.34)
   - `card.unique.healing_stone` (kuerv0_json 0.81)
5. **해석이 들어간 구조화** — Blessing/Curse 8장을 양면 카드 8장으로, ‘3 Deputy Cards’를 이름이 다른 3장 각 1장으로 해석했다. Inner Sanctum은 보드 장소가 아닌 조우 전용 구역(`kind=encounter_only`), 9개 거리 구역은 규칙서 문장에서 파생했다. 다른 세계 2구역(`areas`)은 비공식 EOG 요약에서 가져왔다.
6. **판본** — 규칙서는 2006 개정판, 조사자 시트 이미지는 정오표가 반영된 개정판 시트로 보인다(Bob Jenkins $9, Jenny Barnes 일반 아이템 2). 2005 초판 원래 값은 FAQ가 밝힌 경우에만 `original_value` 로 남겼다.
7. **매핑 실패한 이름** — Rivertown Streets (card.mythos.blood_magic) → 해당 출처 값은 `?이름` 으로 충돌 기록에 보존.

## 8. 정오표(FAQ v2.0) 적용

| id | 쪽 | 인용 | 원래 값 | 수정 값 | 인용 검증 |
|---|---|---|---|---|---|
| errata.inv.jenny_barnes.random_common_items | p.1 | Jenny Barnes should start with 2 Common Items rather than 1 | 1 | 2 | 예 |
| errata.inv.bob_jenkins.money | p.1 | Bob Jenkins should start with $9 rather than $8 | 8 | 9 | 예 |
| errata.card.flesh_ward.sanity_cost | p.1 | Flesh Ward (Spell) should have a Sanity cost of 1 | null | 1 | 예 |
| errata.card.flesh_ward.text | p.1 | Any Phase: Cast and exhaust to ignore all Stamina loss being dealt to you from … | null | Any Phase: Cast and exhaust to ignore a… | 예 |
| errata.card.healing_stone.price | p.1 | Healing Stone (Unique Item) should cost $8 | null | 8 | 예 |
| errata.card.healing_stone.text | p.1 | include the text “Discard this card if the Ancient One awakens.” | null | Discard this card if the Ancient One aw… | 예 |
| errata.card.lantern.price | p.1 | Lantern (Common Item) should cost $3 | null | 3 | 예 |
| errata.card.lantern.text | p.1 | read “+1 to Luck checks.” | null | +1 to Luck checks. | 예 |
| errata.card.elder_sign.text | p.1 | Elder Sign (Unique Item) should say “Arkham Encounter Phase: When closing a gat… | Any Phase: When sealing … | Arkham Encounter Phase: When closing a … | 예 |
| errata.encounter.police_station.deputy_dingby | p.2 | The reward should be the “.38 Revolver” instead of the “.45 Revolver.” | .45 Revolver | .38 Revolver | 예 |

## 9. 이미지 확보 여부

| 역할 | 개수 | 설명 |
|---|---|---|
| investigator_sheet_scan | 16 | 조사자 시트 스캔(Gorlith 저장소, 350px) — 수동 판독에 사용 |
| ancient_one_sheet_scan | 8 | 고대의 존재 시트 스캔(jesseflorig 저장소) — 수동 판독에 사용 |
| investigator_portrait | 16 | 조사자 초상(Kuerv0) — 텍스트 없음 |
| card_art_crop | 59 | 일반·고유 아이템·주문 카드 그림 부분(Kuerv0) — 텍스트 없음 |

이미지 파일 자체는 저장소에 넣지 않았다(`.cache/` 에만 저장, 저작권 FFG). `images` 표에 커밋 고정 URL·SHA-256·연결 엔티티를 기록했다. 조우·신화 카드 이미지는 확보하지 못했다. 몬스터 마커 앞·뒷면은 위키 파일 이름만 `monsters[].image_refs` 에 기록했다 — 위키 이미지 호스트(static.wikia.nocookie.net)가 이 환경에서 차단돼 파일·해시는 없다.

## 10. 실행한 검증

| 그룹 | 검사 | 결과 | 세부 |
|---|---|---|---|
| integrity | json_loads | pass | data/ah2e_base.json |
| integrity | unique_ids | pass | {"ids": 782, "duplicates": []} |
| integrity | references_resolve | pass | {"broken": []} |
| integrity | unresolved_name_references | warn | {"unresolved": [{"name": "Rivertown Streets", "context": "card.mythos.blood_magic", "index": "location"}], "n… |
| integrity | only_base_set_in_canonical_lists | pass | {"non_base": []} |
| integrity | no_expansion_only_names_in_base | pass | {"names_also_used_by_expansion_records": ["card.mythos.rlyeh_rising"], "note": "a shared name is legitimate (… |
| integrity | no_lcg_sources | pass | {"lcg_sources_used": []} |
| structure | encounter_cards_match_arkhamdb_rows | pass | {"problems": [], "problem_count": 0} |
| structure | seven_location_cards_per_neighborhood | pass | {"cards_per_neighborhood": {"nbh.rivertown": 7, "nbh.french_hill": 7, "nbh.southside": 7, "nbh.uptown": 7, "n… |
| structure | location_card_has_one_encounter_per_neighborhood_location | pass | {"problems": []} |
| structure | gate_card_shapes | pass | {"shapes": {"normal:3": 48, "reshuffle": 1}} |
| structure | gate_cards_two_worlds_plus_other_and_colour_consistent | pass | {"problems": []} |
| structure | slider_positions_step_by_one | pass | {"problems": []} |
| counts | count:Location Cards | pass | {"official": 63, "records": 63, "printed_in_data": 63, "unknown_copies": []} |
| counts | count:Gate Cards | pass | {"official": 49, "records": 49, "printed_in_data": 49, "unknown_copies": []} |
| counts | count:Mythos Cards | pass | {"official": 67, "records": 67, "printed_in_data": 67, "unknown_copies": []} |
| counts | count:Common Items | pass | {"official": 44, "records": 22, "printed_in_data": 44, "unknown_copies": []} |
| counts | count:Unique Items | pass | {"official": 39, "records": 26, "printed_in_data": 39, "unknown_copies": []} |
| counts | count:Spells | pass | {"official": 40, "records": 11, "printed_in_data": 40, "unknown_copies": []} |
| counts | count:Skills | pass | {"official": 20, "records": 10, "printed_in_data": 20, "unknown_copies": []} |
| counts | count:Allies | pass | {"official": 11, "records": 11, "printed_in_data": 11, "unknown_copies": []} |
| counts | count:Special Cards | pass | {"official": 35, "records": 7, "printed_in_data": 35, "unknown_copies": []} |
| counts | count:Investigator Sheets | pass | {"official": 16, "records": 16, "printed_in_data": 16, "unknown_copies": []} |
| counts | count:Ancient One Sheets | pass | {"official": 8, "records": 8, "printed_in_data": 8, "unknown_copies": []} |
| counts | count:Monster Markers | pass | {"official": 60, "records": 29, "printed_in_data": 60, "unknown_copies": []} |
| counts | count:Gate Markers | incomplete | {"official": 16, "records": 0, "printed_in_data": 0, "unknown_copies": []} |
| counts | count:Investigator Cards (total) | pass | {"official": 189, "printed_in_data": 189} |
| counts | count:Ancient One Cards (total) | pass | {"official": 179, "printed_in_data": 179} |
| counts | encounter_texts_vs_arkhamdb_rows | pass | {"location_encounters": [189, 189], "gate_encounters": [145, 145], "arkhamdb_base_rows": {"location": 27, "ne… |
| counts | neighborhoods_9_locations_27 | pass | {"neighborhoods": 9, "locations": 27, "board_locations": 26, "encounter_only": ["loc.silver_twilight_lodge_in… |
| counts | other_worlds_8 | pass | {"other_worlds": 8} |
| counts | board_connections | incomplete | {"rows": 0} |
| completeness | required_fields_present | pass | {"null_required_values": [], "by_kind": {}, "documented_blanks": [{"entity_id": "mon.cultist", "field": "horr… |
| completeness | field_status_distribution | pass | {"confirmed": 1665, "single_source": 576, "derived": 141, "none_recorded": 191, "conflict_resolved": 32, "con… |
| integrity | manual_quotes_found_in_official_pdfs | pass | {"checked": 32, "failed": []} |
| spot_checks | location_card_adb046_vs_raw_sql | pass | {"raw": "sources/raw/arkhamdb_sql/scripts/1_base.sql", "encounters": ["loc.black_cave", "loc.general_store", … |
| spot_checks | gate_card_adb052_reshuffle_vs_raw_sql | pass | {"name": "The Stars are Right"} |
| spot_checks | mythos_all_quiet_vs_raw_helper_ts_and_ellebaum | pass | {"gate": ["loc.woods"], "clue": "loc.historical_society", "movement": {"white": ["hexagon"], "black": ["slash… |
| spot_checks | investigator_joe_diamond_vs_raw_kuerv0_and_sheet_transcription | pass | {"sanity": 4, "stamina": 6, "focus": 3, "image": "joe_diamond.png"} |
| spot_checks | monster_byakhee_vs_raw_wiki_and_pavelius_cpp | pass | {"raw": ["sources/raw/fandom_wiki/pages/Byakhee.json", "sources/raw/pavelius_cpp/arkham/monster.cpp"], "value… |
| spot_checks | ancient_one_yig_vs_sheet_transcription_and_raw_ts | pass | {"doom_track": 10, "note": "jesseflorig_json has an empty doomTrack for Yig (recorded as null)"} |
| spot_checks | common_item_lantern_vs_raw_kuerv0_and_faq_errata | pass | {"price": 3, "raw_base_game_json": 3, "raw_per_type_file": 1, "all_source_values_recorded": [1, 2, 3], "note"… |
| spot_checks | component_counts_vs_rulebook_text | pass | {"page": 2} |
| spot_checks | location_arkham_asylum_vs_raw_wiki_scrape | pass | {"stability": "stable"} |
| spot_checks | encounter_check_extraction_adb046_1 | pass | {"checks": [{"skill": "lore", "modifier": -2, "difficulty": 1, "quote": "Lore (-2) check"}]} |

SQLite: integrity_check=`ok`, 외래키 위반 0건, JSON↔SQLite 레코드 불일치 0건, 테이블 40개.

## 11. 재실행

```
python -m ah2e all            # fetch → parse → integrate → validate → export → report
python -m ah2e all --offline  # 네트워크 없이 .cache/ 와 sources/raw/ 만 사용
```

- fandom 위키는 MediaWiki API로 수집한다(이미 받은 페이지는 다시 받지 않음). 받은 wikitext는 `sources/raw/fandom_wiki/pages/` 에 버전 관리되므로 `--offline` 실행도 같은 결과를 낸다. 위키 최신판을 다시 받으려면 그 폴더의 페이지 파일을 지우고 온라인으로 실행한다.
- 여전히 막힌 것: 위키 이미지 호스트, FFG·BGG·archive.org. 보드 연결과 차원문 마커 구성은 공개 텍스트 출처가 없어, 보드·마커를 직접 보고 옮기는 수동 입력(`manual/`)이 필요하다.
