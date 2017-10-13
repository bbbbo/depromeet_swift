Ch03 조건
--------

* if/else
* 삼항 연산자
* 중첩된 if
* else if

#### 주요 개념

* if/else 조건문
    * 조건은 Bool Type으로 판단
        * true를 반환하면 if, false를 반환하면 else
    * 중첩된 if
    * else if 조건문 
  
* 삼항 연산자
    * a ? b : c
        * a는 Bool Type
        * a가 true이면 b, false이면 c
  
#### 예선 과제

~~~ swift
import Cocoa

var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population <= 50000 && population < 100000 {
    message = "\(population) is pretty big!"
} else {
    message = "\(population) is awesome!"
}
print(message)

if !hasPostOffice {
    print("Where do we by stamps?")
}
~~~

#### 참고 자료

> [조건문 (Conditional Statement) 관련 자료](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120)  
