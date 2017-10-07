Chapter7 - 문자열
================


## 문자열 다루기

- 문자열의 character 형태로 루프를 돌 수 있다.
```swift
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground.characters {
    // .characters로 캐릭터형 배열로 만듦
    print("'\(c)'")
}


## 유니코드
- 유니코드는 플랫폼과 상관없이 문자들을 같은 방식으로 처리하고 표현할 수 있도록 약속한 국제 표준이다.

## 인덱스와 구간
- 다섯 번째 문자 찾기

```swift
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end] // "o"
```
- 문자열의 첫 번째 인덱스를 가져오기 위해 문자열의 startIndex 속성을 사용
- index(\_:offsetBy:) 메서드를 사용해 시작점부터 원하는 위치까지 이동

- 구간 뽑아내기
```swift
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = start ... end
let firstFive = playground[range] 
```


