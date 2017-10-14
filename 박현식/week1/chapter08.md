# Chapter 8
## 옵셔널
- 인스턴스에 값이 없을 수도 있다는 일종의 안내
- 옵셔널은 두가지 경우로 해석 될 수 있다.
  - 인스턴스에 값이 지정되어있고 언제든 사옹될 수 있다.
  - 인스턴스에 지정된 값이 없다 (nil값)

### 옵셔널 타입
- 일종의 안전장치.
- nil값이 될수 있는 인스턴스는 옵셔널로 선언해야 한다.
- 옵셔널로 선언되지 않은 인스턴스는 nil로 선언되지 못한다.
- 옵셔널은 ?를 통해 선언한다.
<pre>
<code>
 var errorCodeString: String?
 errorCodeString = "404"
</code>
</pre>
#### 강제 언래핑
- ! : 변수 뒤에 느낌표를 덧붙인다.
- 강제로 해당 변수에 값이 있다고 단정짓는 키워드.

### 옵셔널 바인딩
- 옵셔널에 값이 있는지 판단 할 수 있는 유용한 패턴.
<pre>
<code>
if let temporaryConstant = anOptional {
    //anOptional에 값이 있는 경우
} else {
    //anOptional에 값이 없는 경우
}
</code>
</pre>

### 옵셔널 체이닝
- 옵셔널 바인딩과 같이 옵셔널의 값을 판단하는 방법.
- 옵셔널 바인딩과의 차이점은 체이닝으로 조회 할 수 있다는 점이 다르다.
- 체인에 옵셔널 값이 존재하면 예상타입의 옵셔널을 리턴하고, 어떤 옵셔널이 nil이면 nil을 리턴한다.

### nil 결합 연산자
- 옵셔널이 nil일때 기본값을 설정한다.
- ?? 키워드를 이용한다.
<pre>
<code>
errorDescription = nil
let description  = errorDescription ?? "No error"
</code>
</pre>
위 코드는 errorDescription이 nil일때 No error를 리턴한다.
