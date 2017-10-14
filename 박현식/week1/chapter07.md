# Chapter 7
## 문자열
### 문자열 다루기
- 문자열 : String 타입
- 문자 : 문자열을 이루는 타입, Character 타입
- 문자열의 문자에 access할 경우 stringValue.characters로 접근한다.

### 유니코드
- 스위프트의 문자 및 문자열은 유니코드 기반이다.
#### 유니코드 스칼라
- 유니코드 표준의 특정 문자를 나타내는 21비트 수.
- \u{} 문법을 통해 유니코드 스칼라를 나타낸다. {}안에는 16진수를 입력한다.
- 확장영 문자소 집합체(extended grapheme cluster) : 유니코드 스칼라끼리 결합하여 다른 문자를 만들 수 있다.
- stringValue.unicodeScalars라는 프로퍼티로 유니코드 스칼라를 확인 할 수 있다.

### 원형적 등가
- 유니코드는 결합용 스칼라 뿐 만 아니라 일부 문자에 한해서 결합된 형태도 제공.
- 다른 스칼라로 표현되었지만 의미상으로 동일한 것이라는 것을 원형적 등가라고 한다.
#### 요소의 개수
- stringValue.characters.count
#### 인덱스와 구간
- 스위프트에선 int형이 아닌 String.CharacterView.Index라는 타입으로 인덱스를 추적한다.
<pre>
<code>
let start = playground.startIndex;
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end];
</code>
</pre>
