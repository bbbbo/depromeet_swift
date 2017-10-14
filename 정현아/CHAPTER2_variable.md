# CHAPTER2 / 타입 , 상수, 변수

<br>
<br>

## 타입
- - -
* 변수와 상수에는 데이터 타입이 있으며, 데이터 처리방식에 대한 정보를 컴파일러에 제공한다.
* 변수에 엉뚱한 데이터 타입을 지정하지 않도록 **type checking** 기능을 제공한다.
* ``변수명: type`` 과 같은 **타입 어노테이션** 문법을 사용하여 명시적 선언이 가능하다.

<br>

#### CODE
```swift

var numberOfStoplights = "Six"
numberOfStoplights += 2

```
위와 같은 경우 *String과 Int*로 다른 타입의 인스턴스기 때문에 Error가 발생한다.


```swift

var numberOfStoplights: Int = 6
numberOfStoplights += 2
```
위와 같이 변수의 데이터 타입을 통일시켜 줘야한다.  

<br>

## 상수 vs 변수
- - -
* ``let``을 통해 상수를 선언한다. *String 타입도 선언 가능하다*.
* ``var``을 통해 변수를 선언한다.
* 항상 고정값인 인스턴스는 **상수(let)**, 가변적인 인스턴스는 **변수(var)** 로 선언한다.

<br>

### CODE
```swift

let numberOfStoplights: Int = 6
numberOfStoplights += 2
```

``numberOfStoplights``는 **상수**로 선언되었기 때문에 위 코드에서는 에러가 발생한다.

<br>

## 문자열 삽입
- - -
* ``\()`` 문법은 어떤 인스턴스 값에 엑세스하여 그값을 새 *String 인스턴스* 안에 삽입하는 것이다.

<br>

### CODE

```swift

let car: Int = 4
let townName: String = "Seoul"
var population: Int = 1004

let townDescription =
"\(townName) has a populaion of \(population) and \(car) Cars."

print(townDescription)
```

### RESULT

> **Seoul** has a populaion of **1004** and **4** Cars.



- - -
<br>

## Example
```swift
let townName: String = "Seoul"
var population: Int = 1004
var  unemploymentRate: Int = 38

let townDescription =
"\(townName) 's unemployment rate is about \(unemploymentRate) percent ."

print(townDescription)
```

### RESULT
> **Seoul 's** unemployment rate is about **38** percent .
