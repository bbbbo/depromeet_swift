# Chapter2 - 타입, 상수, 변수

## 타입

swift에서는 타입을 변수와 상수로 지정, 데이타 타입을 지정하지 않고 사용 가능함
swift는 타입 추론이라는 기능을 사용

```
var numberOfStoplights = "Four"
numberOfStoplights += 2                 // error
```

타입 체크 방법 - type(of: T)

```
print(type(of: numberOfStoplights))     // String
print(type(of: 2))                      // Int
```

swift에서는 데이타 타입을 지정하지 않고 사용 가능하지만 선언시 타입을 지정하는것을 추천

```
let numberOfStoplights : String = "Four"
```

## 상수 vs. 변수

상수는 변하지 않는 값 - let
변수는 변하는 값        - var

```
let numberOfStoplights = 4
numberOfStoplights += 2                 // error

var numberOfStoplights = 4
numberOfStoplights += 2
```

## 문자열 삽입

문자열을 추가 시 "+" 연사자를 사용하지 않고 "\()" 을 사용하여 삽입 가능

```
let numberOfStoplights : Int = 4
var population : Int
population = 5422
let townName : String = "Knowhere"

//문자열 삽입
let townDescription =
"\(townName) has a population of\(population) and \(numberOfStoplights) stoplights."
```
