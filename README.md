# 숫자 야구 게임 (Swift)

## 📌 소개
이 프로젝트는 Swift로 만든 콘솔 기반 숫자 야구 게임입니다.  
3자리의 서로 다른 숫자를 입력하여 정답과 비교하고, 게임 기록을 저장 및 출력할 수 있습니다.

## 📂 구성 파일
- `main.swift`: 게임 실행 진입점
- `BaseballGame.swift`: 게임 진행 로직 및 메뉴 처리
- `RecordManager.swift`: 기록 저장 및 출력 기능

## ✅ 기능
- [x] 게임 시작
- [x] 숫자 입력 및 비교 (스트라이크/볼)
- [x] 예외처리 (잘못된 입력, 중복 숫자, 0 시작 등)
- [x] 시도 횟수 기록
- [x] 게임 기록 출력 및 초기화

## 🚀 실행 방법
```bash
swiftc main.swift BaseballGame.swift RecordManager.swift -o BaseballGame
./BaseballGame
