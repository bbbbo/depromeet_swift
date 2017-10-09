

## Chapter 8 *#옵셔널*

옵셔널은 스위프트에서 볼 수 있는 특별한 기능 중에 하나다.

```swift
var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString) // Optional("404")

/*
var errorCodeString: String?
print(errorCodeString) // nil 
*/
```

옵셔널로 변수를 선언해주게 되면 일단 변수는 nil값이 들어간다. 그래서 주석으로 처리된 코드에서는 nil이 출력된다.



```swift
var errorCodeString: String?
errorCodeString = "404"

if errorCodeString != nil {
    let error = errorCodeString!
    print(error) // 404
}
```

`let error = errorCodeString!`의 ! 때문에 404가 출력된다. !가 없다면 Optional("404")가 출력된다. 이를 강제 언래핑이라고 한다. 강제 언래핑을 이용하면 옵셔널의 값에 접근이 가능하다. 하지만 강제 언래핑을 이용해서 값에 접근을 했는데 값이 nil이라면 Crash가 발생한다. 강제 언래핑을 사용하면 위험하기 때문에 지양해야 한다. 이를 해결하기 위한 것이 바로 `옵셔널 바인딩`이다.

```swift
// 옵셔널 바인딩

var errorCodeString: String?
errorCodeString = "404"

if let error = errorCodeString {
    print(error) // 404
}
```

옵셔널 바인딩을 중첩해서 사용하는 것은 지양하도록 하자. 중첩해서 사용하는 대신 다음과 같이 사용 if let을 이용해서 한 번의 호출로 여러 옵셔널을 언래핑할 수 있다. 

```swift
// 여러 옵셔널 언래핑

if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
    if errorCodeInteger == 404 {
        print("blah blah") 
    }
    print("\(theError): \(errorCodeInteger)")
}
// blah blah 
// 404: 404  가 출력된다.
```



암묵적 옵셔널이라는 것도 있다.

```swift
// 암묵적 언래핑 옵셔널

var errorCodeString: String!
errorCodeString = "404"
print(errorCodeString) // 404
```

일반적인 옵셔널과 다르게 `!`를 사용한다. 암묵적 옵셔널의 좋은 점은 언래핑을 할 필요없이 값에 접근할 수 있다는 점이다. 선언할 때 언래핑을 동시에 해버린다. 그러나 접근시에 값이 없다면 Crash가 발생한다. 



```swift
// 옵셔널 체이닝

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
        errorDescription = "\(errorCodeInteger + 200): resource was not found."
    }
if let upCaseErrorDescription = errorDescription?.uppercased() {
    print(upCaseErrorDescription) // 604: RESOURCE WAS NOT FOUND.
}
errorDescription // "604: resource was not found."
```

`var upCaseErrorDescription = errorDescription?.uppercased()` 의 ?가 옵셔널 체이닝의 시작을 뜻한다. errorDescription에 값이 존재하므로 대문자로 출력된다. 만약에 값이 없다면 nil이 출력될 것이다. 책의 예제로는 옵셔널로 출력되서 그냥 언래핑해서 호출했다.



```swift
// 옵셔널 바인딩을 통해 파싱

...
var errorDescription: String?
errorDescription = "404"
let description: String

if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error"
}
print(description) // 604: resource was not found.
```

위 코드 대로라면  `604: resource was not found.`가 출력되고 errorDescription의 값이 존재 하지 않으면  `No error`가 출력된다. 그런데 이를 한 줄로 대체할 수 있다.

```swift
// nil 결합 연산자

...
let description = errorDescription ?? "No error"
```



```swift
// 예선과제
어떤 부모의 자식 수 : Int일까 Int?일까 ==> Int
어떤 사람의 애완동물 이름 : String일까 String?일까 ==> String?

// 예선과제 2
var errorString: String?
let error = errorString! // fatal error: unexpectedly found nil while unwrapping an Optional value
```

