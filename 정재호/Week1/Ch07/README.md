Ch07 문자열
----------

* 문자열 다루기
* 유니코드
    * 유니코드 스칼라
    * 원형적 등가
        * 요소의 개수 세기
        * 인덱스와 구간

#### 주요 개념

* 문자열
    * **String** 타입을 사용
    * **Character** 타입
        * 문자열을 구성하는 문자
        * stringVariable.characters 를 사용하여 String 인스턴스의 Character들에 접근 가능
  
* 유니코드 스칼라
    * 유니코드 표준의 특정 문자를 나타내는 21비트의 수
    * \\u{}를 사용, 중괄호 내에는 16진수 입력
    * 스위프트의 모든 Character는 **확장형 문자소 집합체(extended grapheme cluster)**
        * 하나 또는 여럿의 유니코드 스칼라가 연속된 혇태

#### 참고 자료

> [문자열 관련 자료](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID285)  

