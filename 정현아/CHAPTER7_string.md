# CHAPTER7 / String
<br>
<br>

## 문자열
- - -
* 문자열은 ``" "``안에 넣어 선언한다.
* 문자들의 배열이다. 그러나 인덱스로 문자열에 접근할 수 없다.
 - 아래와 같은 방법으로 **구간추출**이 가능하다
  ```swift
  let sentence = "hyunah, Princess"
let start = sentence.startIndex     //인덱스정보
//출력: Index(_compoundOffset: 0, _cache: Swift.String.Index._Cache.utf16)
let end = sentence.index(start, offsetBy: 4)  //인덱스정보
//출력: Index(_compoundOffset: 16, _cache: Swift.String.Index._Cache.character(1))
let fifthCharacter = sentence[end]      //출력: a
let range = start...end
let firstFive = sentence[range]     //출력:hyuna
```
start 와 end에 인덱스 정보를 담고, 그것을 통해서 ``문자열변수[end] `` 로 접근하여 구간추출을 한다.

다른방법으로는 메소드를 통해서 제어할 수 있다.


### CODE
```swift
var name = "hyuna"
name += " jeong"
print(name)   //출력: hyuna jeong
```


## 유니코드
- - -
* 문자들을 같은 방식으로 처리하고 표현할 수 있도록 약속한 국제 표준이다.
* 유니코드의 모든 문자에는 고유 번호가 지정되어 있다.
* String과 Charactre 타입은 유니코드를 바탕으로 만들어졌다.
* **유니코드 스칼라**는 유니코드 표준의 특정 문자를 나타내는 21비트짜리 수이다.
