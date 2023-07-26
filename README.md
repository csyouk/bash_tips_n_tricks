# Bash tips and tricks

- bash script 작성하면 안되는 경우
- shell 종류와 문법 기준(bash)
- bash shell
  - script 설정(set, shopt)
  - 변수 타입/scope
  - 기본 문법
  - 연산 문법
  - 문자열 처리(sed, awk, regexp)
  - 자주 쓰는 패턴
- 자주 쓰는 util
  - find/grep
  - cron
- 실제 사례 코드 첨부

- script 작성시 추천 vscode extension 들
- mads-hartmann.bash-ide-vscode : bash ide
- foxundermoon.shell-format : shell formatting

## Bash script를 사용하지 말아야 하는 경우

- [참조](https://tldp.org/LDP/abs/html/abs-guide.html#WHY-SHELL)
- Resource heavy 한 작업을 하는 경우(sorting, hashing, recursion..)
- heavy 한 연산작업이 필요한 경우.
- cross platform 포팅을 염두해 두는 경우
- 복잡한 application 작성이 필요한 경우

## shell 종류와 문법 기준(bash)

| Bourne Shell (sh) | C Shell (csh)                    | TC Shell (tcsh)              | TC Shell (tcsh)              | Bourne Again Shell (bash)                      | Z shell (zsh)            |
|-------------------|----------------------------------|------------------------------|------------------------------|------------------------------------------------|--------------------------|
| 유닉스 버전의 기본 쉘(본쉘)  | C언어 기반으로 개발되어 프로그램 작성 기능이 좋음.    | C 쉘과 통합해서 탄생된 쉘. TC쉘이라고 불림.  | C 쉘과 통합해서 탄생된 쉘. TC쉘이라고 불림.  | 본쉘을 기반으로 만들어진 쉘.                               | 본쉘의 확장된 버전.              |
|                   | History, alias 등 여러 유용한 기능이 있음.  | C 쉘에 없는 명령어 자동완성, 편집기능을 지원.  | C 쉘에 없는 명령어 자동완성, 편집기능을 지원.  | 현재 리눅스의 표준쉘.                                   | 다양한 기능, 플러그인, 테마가 존재.    |
|                   | 명령행 편집 기능이 없음.                   |                              |                              | GNU 프로젝트를 위해 개발되었으며 맥 OS 등 여러 운영체제에서 사용됨.      | 맞춤법 검사.                  |
|                   |                                  |                              |                              | sh와 호환되는 문법과 history, 명령행 편집 등 다양한 기능을 가지고 있음. | 로그인 / 로그아웃 감시 기능.        |
|                   |                                  |                              |                              |                                                | 바이트 코드와 같은 내장 프로그래밍 기능.  |
|                   |                                  |                              |                              |                                                | 구문의 과학적 표기적 지원.          |
|                   |                                  |                              |                              |                                                | 부동 소수점 산술 및 기타 기능.       |
|                   |                                  |                              |                              |                                                |                          |
|                   |                                  |                              |                              |                                                |                          |

## bash shell

### script 설정(set, shopt)

- 변수 타입/scope
- 기본 문법
- 연산 문법
- 문자열 처리(sed, awk, regexp)
- 자주 쓰는 패턴
