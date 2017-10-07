Chapter5 - Switch
=================

- 일반적인 switch문과 동일하다.
- 경우의 수를 나눠서 판단하는 것.

```swift
switch aValue{
    case someValueToCompare:
        // 이 값에 따른 코드 실행
    case anotherValueToCompare:
        // 이 값에 따른 코드 실행
    default:
        // 앞 두가지 케이스에 해당하지 않는 경우 여기로..
}
```

## 값 바인딩
- value binding 이라는 스위프트의 기능을 적용하여 숫자정보를 추가할 수 있다.

```swift
switch statusCode{
    case 100, 101:
        ......
    case 204:
        ......
    case 300....307:
        ......
    case 400...417:
        ....
    case let unknownCode:
        errorString = "\(unknownCode) is not a known error code."
}
```


## Where
- where는 일종의 동적 필터

```swift
var errorString: String = "The request failed with the error:"

switch statusCode {
    case 100, 101:
        ....
    case 204:
        ...
    case let unknownCode where (unknownCode  >= 200 && unknownCode < 300)\
            || unknownCode > 505:
        errorString = "\(unknownCode) is not a known error code."
}


## 튜플과 패턴 대조
- statusCode와 errorString은 논리적 연관성을 가지고 있다.
- 둘은 현재 따로 저장되지만 하나로 묶는다면 유용할 것이다.
- 이때 튜플을 사용
```swift
let error = (statusCode, errorString)
// 튜플 요소에 액세스
error.0 // statusCode
error.1 // errrorString
```


- 튜플 요소에 이름 지정
```swift
let error = (code: statusCode, error: errorString)
error.code
error.error
```

## 튜플을 사용하는 패턴 대조
```swift
let error = (code: statusCode, error: errorString)
error.code
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
    case (404, 404):
        print("No items found.")
    case (404, _): // 첫번째 튜플원소만 비교
        print("First item not found")
    case (_, 404): // 두번째 튜플원소만 비교
        print("Second item not found")
    default:
        print("All items found.")
}
```
