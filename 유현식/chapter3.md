Chapter3 - 조건
==============

- Swift의 조건문은 다른언어와 다른 특이점은 존재하지 않는다.

## if/else

- Python과 비슷하게 if문 안에 괄호는 안적어도 되는듯
```swift
var population: Int = 5422
var message: String

if population < 10000 {
    message = "\(population) is a small town!"
} else{
    message = "\(population) is pretty big!"
}
print(message)
```

## 삼항 연산자

- 일반적으로 사용하는 삼항연산자와 동일
```swift
message = population < 10000 ? "\(population) is a small town!" :\
    "\(population) is pretty big!"
```

## 예선과제
- 도시의 규모를 확인하는 코드에 else if를 하나 더 적용하여 도시의 인구가 '매우 많은' 경우를 추가하라.
- 적용할 인구의 범위는 직접 결정
- 그에 따른 message의 내용도 적절하게 수정하라

```swift
var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 50000 && population < 100000{
    message = "\(population) is very big!"
} else {
    message = "\(population) is pretty big!"
}
print(message)
```
