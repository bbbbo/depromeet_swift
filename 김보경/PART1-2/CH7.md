# Chapter 7 문자열


## 문자열 다루기

* String 타입 -> 문자열
    * 문자열.characters : 문자열의 Character 타입
* Character 타입 -> 문자






## 유니코드

 * 플랫폼과 상관없이 문자들을 같은 방식으로 처리하고 표현할 수 있도록 약속한 국제 표준




#### 유니코드 스칼라

 * 유니코드 표준의 특정 문자를 나타내는 21비트짜리 수
 * \u{16진수}
 * 스위프트의 모든 문자는 하나나 그 이상의 유니코드 스칼라로 만들어진다. (스칼라 결합 가능)
     * unicodeScalars 프로퍼티에 담겨져 있다
 * 확장형 문자소 집합체 : 하나 또는 여럿의 유니코드 스칼라가 연속된 형태




#### 원형적 등가

 * 두 개의 유니코드 스칼라가 의미상 동일하다

 * 언어적으로 동일한 의미를 가지고 동일하게 표현될 때 = 동일하다
```swift
let aAcute = "\u{0061}\u{0301}"
let aAcutePrecomposed = "\u{00E1}"     //미리 결합된 문자
let b = (aAcute == aAcutePrecomposed )     //참
```


* 구성하는 유니코드 스칼라는 동일하지 않아도 된다




#### 요소의 개수 세기

* 변수이름.characters.count




#### 인덱스와 구간

* String.CharacterView.Index  -> 인덱스 추적

* CharacterView
    * String에 정의된 타입

    * 어떤 문자열의 문자들을 순서 컬렉션으로 나타내준다

    * 코드 포인트들을 하나의 Character 타입 인스턴스로 나타내주고, 문자들을 올바른 문자열로 결합한다

         ​

 * index(_:offsetBy:)
     * 시작점부터 원하는 위치까지 이동
```swift
let start = playgroud.startIndex   //첫번째 인덱스
let end = playgroud.index(start, offsetBy: 4)
let fifthCharacter = playgroud[end]    //5번째 문자 찾기
```


* 구간 뽑아내기
```swift
let range = start...end    //닫힌 구간 만들어짐
let firstFive = playgroud[range]
```




