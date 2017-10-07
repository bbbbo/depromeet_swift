Chapter2 - 타입, 상수, 변수
==========================


## 타입
- 변수와 상수에는 데이터 타입이 존재한다.
- 타입은 데이터의 본질을 설명하고 데이터 처리 방식에 관한 정보를 컴파일러에게 제공한다.
- Swift에서는 type inference라는 기능이 제공되어 데이터 값에 따라 데이터의 타입이 자동으로 결정된다.

```swift
var numberOfStoplights = "Four"
```

- 위와 같이 변수의 값을 설정하게 되면 자동으로 String으로 인식하게 된다.
- String으로 타입이 결정되었기 때문에 다른 타입과의 연산은 불가능하다.

```swift
// 틀린문법
// 연산이 되지 않는다.
var numberOfStoplights = "Four"
numberOfStoplights += 4
```

- Type annotation
> - 변수의 타입을 명시적으로 선언해주는 기능
```swift
// 명시적으로 변수의 타입이 Int 형임을 알림
var numberOfStoplights: Int = 4
numberOfStoplights += 2
```

## 상수 vs. 변수
- 변수는 값이 변할 수 있는 데이터
- 상수는 값이 변해서는 안되는 인스턴스
- 상수는 변수와는 다르게 let 이라는 키워드를 사용한다.
```swift
// 컴파일 에러 발생
// 상수에 연산을 시도하였기 때문
let numberOfStoplights: Int = 4
numberOfStoplights +=2
```

## 문자열 삽입
- 상수나 변수의 값을 새로운 문자열에 추가할 수 있는 기능
- \() 문법을 사용하면 기존에 정의된 변수나 상수의 값을 호출할 수 있다.

```swift
let numberOfStoplights: Int = 4
var population: Int = 5422
let townName: String = "Knowhere"
let townDescription = \
"\(townName) has a population of \(population) and \(numberOfStoplights) stoplights."
print(townDescription)
```
위와같이 \()문법을 사용하여 기존에 정의된 데이터들을 호출하여 새로운 문자열을 만들 수 있다.

## 예선과제
- Knowhere의 실업률을 나타내는 새 변수를 추가하라
- 실업률과 알맞은 데이터 타입을 사용할지 생각, 값을 지정하라
- townDescription에서 이 값을 사용하도록 코드를 업데이트 하라

```swift
let numberOfStoplights: Int = 4
var population: Int = 5422
let townName: String = "Knowhere"
var unemploymentRate: Float = 10.1
let townDescription = \
"\(townName) has a population of \(population) , \(numberOfStoplights) stoplights and \(unemploymentRate) unemployment rate."
print(townDescription)
```

