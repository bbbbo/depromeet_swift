# Chapter 2
## 타입, 상수, 변수

### 타입
- 상수나 변수에 담긴 데이터의 본질, 컴파일러는 타입을 근거로 메모리를 준비한다.
- type checking을 통해 타입 유효성을 확인한다.
- type inference : 타입 추론, 변수에 대입되는 값으로 데이터의 타입을 결정한다.
- type annotation : 타입 추론에 의존하지 않고 타입을 명시적으로 선언한다.(변수명:타입)

### 상수와 변수
- 상수는 변수와 달리 변하지 않는 값이다.
- 변수는 var로 선언하지만 상수는 let을 통해 선언한다.


### 문자열 삽입(string interpolation)
상수 및 변수의 값을 새 문자열과 결합하는 구문
'\\()'구문을 통해서 결합한다.
<pre>
<code>
import Cocoa

let numberOfStoplights: Int = 4
var population: Int = 5422
let townName: String = "Knowhere"
let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights)."
print(townDescription)

</code>
</pre>

## 예선 과제
<pre>
<code>
import Cocoa

var unemploymentRate: Double = 20.0;
let townName: String = "Knowhere"
let townDescription = "\(townName)'s Unemployment Rate is \(unemploymentRate)%";
print(townDescription);
</code>
</pre>
