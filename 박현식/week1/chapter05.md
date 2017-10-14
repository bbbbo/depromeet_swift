# Chapter 5
## switch
- if/else가 조건을 통해 코드를 실행하는 반면, switch는 경우의 수를 나눠 판단하여 코드를 실행한다.
- case에 해당하는 경우의 수에 해당하면 코드를 실행한다.
- 모두 해당하지 않으면 default에서 실행한다.

### fallthrough
- 제어권 전달문(control transfer statement)
- 어떤 흐름으로 진행되던 실행의 흐름을 바꿀수 있는 문법. 제어권을 다른쪽 코드로 전달한다.
- switch에서 바로 및 case로 제어권을 전달한다.

### 구간 대조(range matching)
- valueX...valueY
- valueX와 valueY 사이의 모든 값을 나타낸다.

### 값 바인딩(value binding)
- case에 대조되는 기준값을 지역 상수나 변수에 묶을 수 있다.

### where
- switch에 조건을 더 추가하기 위한 동적 필터


## 튜플과 패턴 대조
## 튜플
- 논리적 연관성이 있는 둘 이상의 값을 한데 묶은 유한 집합.
<pre>
<code>
let value = (a, b)
value.0 // a
value.1 // b

//튜플에 요소 이름 지정
let error = (code: statusCode, error : errorString)
error.code //statusCode
error.error //errorString
</code>
</pre>

## 패턴 대조
- 구간 대조도 패턴 대조의 일종
- '_' : 와일드카드
