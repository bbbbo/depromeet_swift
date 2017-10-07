Chapter8 - 옵셔녈
================

- 스위프트의 특별한 기능중 하나
- 어떤 인스턴스에 값이 없을 수도 있다는 일종의 안내
> - 인스턴스에 값이 지정되어 있고 언제든 사용될 수 있다.
> - 인스턴스에 지정된 값이 없다.
>> - 지정된 값이 없는 인스턴스를 가리켜 nil이라 한다.


## 옵셔널 타입
- 옵셔널은 일종의 안전장치
- nil이 될 수도 있는 인스턴스는 반드시 옵셔널 타입으로 선언해야 한다.

- 옵셔널 타입 선언하기
```swift
var errorCodeString: String?
errorCodeString = "404"
```
- 명시적 선언으로 string을 선언했지만 뒤에 ?가 붙어있음

```swift
var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString) // "404"출력

var errorCodeString: String?
// errorCodeString = "404"
print(errorCodeString) // nil출력
```


- !를 통해 옵셔널의 값을 forced unwrapping 시킬 수 있다.
```swift
var errorCodeString: String?
errorCodeString = "404"
if errorCodeString != nil {
    let theError = errorCodeString!
    print(theError)
}
```
- 위에서 nil이 아닌 조건을 확인 하였기 때문에 errorCodeString 안에 값이 존재하는 것을 알 수 있다.
- 따라서 !를 통해 옵셔널 변수의 값을 강제로 확정시킬 수 있다.
- nil값이 존재한다면 컴파일 에러가 발생


## 옵셔널 바인딩
- 옵셔널 바인딩은 옵셔널에 값이 있는지 판단할 수 있는 유용한 패턴이다.

```swift
var errorCodeString: String?
errorCodeString = "404"
if let theError = errorCodeString{
    print(theError)
}
```
- errorCodeString의 값이 nil이 아닐경우에만 theError라는 임시 상수를 사용할 수 있다.


## 암묵적으로 언래핑된 옵셔널
- 옵셔널을 선언할때 언래핑시켜버리는 것
- 언래핑시킨 값에 실제로 값이 없다면 런타임 에러 발생
```swift
var errorCodeString: String!
errorCodeString = "404"
print(errorCodeString)
```

## 옵셔널 체이닝
- 옵셔널 체이닝도 바인딩처럼 어떤 옵셔널에 값이 있는지 판단하는 방법을 제공한다.
- 옵셔널의 값에 여러 번 사슬처럼 이어 조회할 수 있다는 점이 다르다.

```swift
var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
        errorDescription = "\(errorCodeInteger + 200): resource was not found."
    }
var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription
```

- errorDescription 이라는 새로운 에러 설명 문자열을 만들고 200을 더하여 604라는 새로운 에러코드를 만들어냈다.
- errorDescription?.uppercased() 라는 것이 옵셔널 체이닝의 시작이다.
- errorDescription에 값이 없을 때는 대문자로 변환할 문자가 없으므로 nil로 설정되고, 값이 존재한다면 대문자로 저장될 것이다.


## nil 결합 연산자
- 옵셔널을 처리할 때는 값을 가져오거나 옵셔널이 nil일 때 기본값을 사용하는 것이 일반적이다.

```swift
let description: String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error"
}
```
- 위에서는 nil값을 가져오는 것인데 문장이 너무 길다.

```swift
let description = errorDescription ?? "No error"
```
- 위 블록을 간단하게 줄여서 사용할 수 있다.
