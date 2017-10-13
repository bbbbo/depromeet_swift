Ch02 타입, 상수, 변수
------------------

* 타입
* 상수 vs. 변수
* 문자열 삽입

#### 주요 개념

* 타입
    * 타입 추론 (type inference)
    * 타입 어노테이션 (type annotation)
        * ':' 다음에 타입의 종류를 선언하여 해당 변수의 타입을 명시적으로 선언
  
* 상수와 변수
    * 상수 (constant)
        * 값이 변하지 않는 인스턴스
    * 변수 (variable)
        * 값이 변경되는 인스턴스
  
* 문자열 삽입 (string interpolation)
    * \\() 문법은 String 리터럴에 어떤 인스턴스가 들어간다고 '찜한 자리(placeholder)'를 뜻한다
  
#### 예선 과제

~~~ swift
import Cocoa

let numberOfStoplights: Int = 4

var population: Int
population = 5422

let townName: String = "Knowhere"

var unemploymentRate: Double = 0.4

let townDescription =
"\(townName) has a population of \(population) and \(numberOfStoplights) stoplights. \(townName)'s unemployment rate is \(unemploymentRate)."

print(townDescription)
~~~

#### 참고 자료

> [타입, 상수, 변수 관련 자료](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID60)  