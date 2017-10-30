# Chapter 5 switch


##  switch가 무엇일까?

* switch의 기본적인 문법
```swift
switch aValue {
case someValue:
    // 해당 코드 실행
case anotherValue:
    // 해당 코드 실행
default:
}
```




## switch 실전

```swift
switch statusCode {
case 400, 401, 403, 404:
    errorString = "wrong!"
    fallthrough
default:
    errorString = "review again."
}
```

* fallthrough라는 **제어권 전달문** 추가

* 제어권 전달문 사용 -> 실행 흐름을 바꿀 수 있다 = 다른 쪽 코드로 제어권을 전달한다




#### 구간

* valueX...valueY (구간 대조 문법)

  * valueX와 valueY를 포함하여 그 사이의 모든 값까지 나타내는 범위




#### 값 바인딩

* 숫자 정보를 추가할 수 있다.

* 어떤 case에서 대조되는 기준값을 지역 상수나 변수에 묶을 수 있다.

```swift
switch statusCode {
case 400, 401, 403, 404:
    errorString = "\(statusCode)"
case let unkownCode:
    errorString = "\(unkownCode)"
}
```



#### where

* 동적 필터

* where를 사용하여 필터 만들기
```swift
    ...
   case let unkownCode where (unknownCode >= 200 && unknownCode < 300)
        || unkunknownCode > 505;
    errorString = "\(ununknownCode)"
```



#### 튜플과 패턴 대조

* 튜플 : 논리적 연관성이 있는 둘 이상의 값을 한데 묶은 일종의 유한 집합
    * 서로 다른 값들이 하나의 복합 값으로 묶임 -> 결과는 순서 리스트의 구조

    ​

* 튜플 만들기
```swift
let error = (statusCode, errorString)
```



* 튜플 요소에 액세스하기
```swift
    let error = (statusCode, errorString)
    error.0
    error.1
```




* 튜플 요소에 이름 정하기
```swift
    let error = (code: statusCode, error: errorString)
    error.code
    error.error
```




* 튜플을 사용하는 패턴 대조
```swift
    let errorCodes = (firstErrorCode, secondErrorCode)
    switch errorCodes {
    case (404, 404):
        ...
    case (_, 404) :
        ...
    }
```
case의 밑줄(_)은 와일드 카드



## switch vs. if/else

* switch : 어떤 하나의 값을 여러 경우와 일일이 대조하며 비교할 때 유용하다.

* if/else : 하나의 조건을 판단할 때 유용하다.

