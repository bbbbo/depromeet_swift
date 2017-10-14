# Chapter 3
## 조건
### if/else if/else
- 특정 논리 조건에 따라 코드를 실행한다.
- 비교 연산자와 논리연산자를 통해 논리조건을 판단한다.
### 삼항연산자
- if/else와 비슷하지만 더 간결한 문법.
- a ? b : c 형태를 보인다. a가 참이면 b, 거짓이면 c를 반환한다.

## 예선 과제
<pre>
<code>
import Cocoa

var population: Int = 154220
var message: String
var hasPostOffice: Bool = true
if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 50000 && population <= 200000 {
    message = "\(population) is a huge town!"
} else {
    message = "\(population) is pretty big"
}

print(message);
</code>
</pre>
