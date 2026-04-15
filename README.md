# Dominion Prototype

간단한 **Dominion(도미니언) 프로토타입** 프로젝트입니다.  
핵심 규칙 엔진(`dominion/core`) 위에 AI(`dominion/ai`), 카드 정의(`dominion/cards`), UI(`dominion/ui`)가 분리되어 있습니다.

- Python: **3.11+**
- 주요 의존성: `pygame` (GUI), `pytest` (테스트)

---

## 1. 설치 방법 (Install)

### 1) 저장소 클론

```bash
git clone <repo-url>
cd dominion
```

### 2) 가상환경 생성 및 활성화

#### macOS / Linux

```bash
python3 -m venv .venv
source .venv/bin/activate
```

#### Windows (PowerShell)

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

### 3) 의존성 설치

```bash
pip install -r requirements.txt
```

> `pyproject.toml`에도 `pygame` 의존성이 선언되어 있으며, 테스트 실행 경로는 `tests`로 설정되어 있습니다.

### 4) 테스트 실행(선택)

```bash
pytest
```

---

## 2. GUI 없이 플레이하는 방법 (CLI)

CLI 모드는 `main.py`의 기본 모드이며, **사람(Human) vs AI**로 동작합니다.

```bash
python main.py --mode cli
```

시드 고정 실행:

```bash
python main.py --mode cli --seed 42
```

### CLI 진행 방식

- 액션 단계: 손패의 액션 카드 이름을 입력하여 플레이
- 구매 단계: 구매 가능한 카드 목록 중 카드 이름 입력
- 빈 입력(Enter): 해당 선택 종료/스킵

---

## 3. GUI로 플레이하는 방법 (Pygame)

Pygame UI로 **사람(Human) vs AI** 게임을 플레이할 수 있습니다.

```bash
python main.py --mode pygame
```

시드 + 카드 이미지 디렉토리 지정:

```bash
python main.py --mode pygame --seed 42 --card-image-dir assets/cards
```

### GUI 조작법 요약

- Action phase에서 손패 액션 카드를 클릭해 플레이
- 우측 버튼:
  - `To Buy Phase`
  - `Play Treasures`
  - `End Turn`
- Supply 카드 클릭으로 구매 시도

> 카드 이미지가 없으면 카드 타입/비용/설명을 표시하는 플레이스홀더 카드가 렌더링됩니다.

---

## 4. 프로젝트 구조 설명

```text
.
├─ main.py                    # 실행 진입점 (cli/pygame 모드 선택)
├─ pyproject.toml             # 패키지/pytest 설정
├─ requirements.txt           # 런타임/테스트 의존성
├─ dominion/
│  ├─ match.py                # AI vs AI 시뮬레이션 루프
│  ├─ ai/
│  │  ├─ policy.py            # 정책 프로토콜(TurnPolicy)
│  │  └─ heuristic.py         # 규칙 기반 AI
│  ├─ cards/
│  │  ├─ base.py              # 기본 카드 효과 및 카드 스펙 정의
│  │  └─ registry.py          # 카드 레지스트리/킹덤 카드 선택
│  ├─ core/
│  │  ├─ turn.py              # DominionEngine (핵심 룰)
│  │  ├─ game_state.py        # GameState/TurnState
│  │  ├─ choices.py           # 사용자/AI 선택 인터페이스
│  │  ├─ scoring.py           # 점수 계산
│  │  ├─ card.py              # CardDefinition
│  │  ├─ player.py            # PlayerState
│  │  ├─ supply.py            # SupplyPile
│  │  ├─ events.py            # Event 모델
│  │  ├─ resolver.py          # 이벤트/로그 기록
│  │  ├─ types.py             # CardType/Phase enum
│  │  └─ exceptions.py        # 엔진 예외
│  └─ ui/
│     └─ pygame_app.py        # Pygame 앱 구현
└─ tests/                     # 기능별 테스트
```

### 레이어 개요

1. **core**: 게임 규칙의 단일 진실 원천(SoT)
2. **cards**: 카드 효과/메타데이터 등록
3. **ai**: 턴 실행 정책
4. **ui / cli**: 입력/출력 계층
5. **tests**: 규칙 회귀 방지

---

## 5. AI vs AI 시뮬레이션 실행 예시

코드에서 직접 실행:

```python
from dominion.match import play_ai_vs_ai

scores = play_ai_vs_ai(max_turns=200, seed=123)
print(scores)
```

또는 테스트로 간접 검증:

```bash
pytest tests/test_ai_heuristic.py
```

---

## 6. 문제 해결 (Troubleshooting)

### pygame 설치/실행 이슈

- OS별 SDL 관련 패키지가 필요할 수 있습니다.
- GUI 환경이 없는 서버/컨테이너에서는 `--mode pygame`가 동작하지 않을 수 있습니다.
- 이 경우 `--mode cli` 또는 테스트 기반 실행을 사용하세요.

### 테스트가 import 에러로 실패할 때

- 가상환경이 활성화되어 있는지 확인
- 루트 디렉토리(`dominion/`가 있는 위치)에서 `pytest` 실행

---

## 7. 개발 팁

- 새 카드 추가 시:
  1) `dominion/cards/base.py`에 효과 함수 + `CARD_SPECS` 등록
  2) 필요시 `dominion/cards/registry.py`의 kingdom 후보 반영
  3) 테스트 추가(`tests/`)

- 새 정책/AI 추가 시:
  - `dominion/core/choices.py` 인터페이스를 구현하거나
  - `dominion/ai/policy.py`의 `TurnPolicy` 형태로 `take_turn`까지 구현

