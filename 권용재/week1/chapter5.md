## Chapter 5 *#Switch*

다른 언어의 Switch문과 구조적으로 다를 게 없다.

```swift
// Switch

var statusCode: Int = 404
var errorString: String

switch statusCode {
  case 400:
  	  errorString = "Bad Request"
  case 401:
  	  errorString = "Unauthorized"
  case 403:
  	  errorString = "Forbidden"
  case 404:
  	  errorString = "Not Found"
  default:
  	  errorString = "None"
}

// 결과값이 Not Found가 나온다.
```

다른 언어와 다른 점이 있다면 `fallthrough`라는 제어권 전달문입니다. case를 종료시키지 않고 강제로 다음 case문을 실행시켜 버립니다. 



```swift
var statusCode: Int = 404
var errorString: String

switch statusCode {
  case 400:
  	  errorString = "Bad Request"
  	  fallthrough
  case 401:
  	  errorString = "Unauthorized"
  	  fallthrough
  case 403:
  	  errorString = "Forbidden"
  	  fallthrough
  case 404:
  	  errorString = "Not Found"
  	  fallthrough
  default:
  	  errorString = "None"
}

// 결과값이 Bad Request Unauthorized Forbidden Not Found None이 나온다.
```

사실 잘 이해가 되지 않습니다. 왜 있는지 모르겠습니다. 추가적으로 swift는 break문이 없어도 일치하는 case를 찾으면 자동으로 컴파일러가 switch문을 종료시킵니다. 



```swift
var statusCode: Int = 205
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString = "Informational, \(statusCode)"
case 204:
    errorString = "Successful but no content, 204"
case 300...307:
    errorString = "Redurection, \(statusCode)"
case 400...417:
    errorString = "Client error, \(statusCode)"
case 500...505:
    errorString = "Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known eroor code."
default:
    errorString = "Unexpected error."
}
print(errorString) // 205 is not a known eroor code.
```

where라는 것을 이용해서 필터처럼 사용할 수도 있습니다. 마치 쿼리처럼..  그리고 `300...307`이라는 게 있는데 이것은 300에서 307까지를 나타내는 것입니다.



튜플이라는 것이 있습니다. 연관성이 있는 두 개 이상의 값을 묶어서 사용할 수 있게 해주는 자료구조 입니다. 위에서 다룬 코드에서 statusCode와 errorString은 서로 연관성이 있기 때문에 튜플로 묶어서 사용할 수 있습니다.

```swift
var statusCode: Int = 205
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString = "Informational, \(statusCode)"
case 204:
    errorString = "Successful but no content, 204"
case 300...307:
    errorString = "Redurection, \(statusCode)"
case 400...417:
    errorString = "Client error, \(statusCode)"
case 500...505:
    errorString = "Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known eroor code."
default:
    errorString = "Unexpected error."
}
let error = (statusCode, errorString)
print(error) // (205, "205 is not a known eroor code.")
print(error.0) // 205
print(error.1) // 205 is not a known eroor code.
```

.

```swift
let firstErrorCode = 404
let secondeErrorCode = 200
let errorCodeds = (firstErrorCode, secondeErrorCode)

switch errorCodeds {
case (404, 404):
    print("aaa")
case (404, _):
    print("bbb")
case (_, 404):
    print("ccc")
default:
    print("NOPE")
}
// bbb가 출력된다.
```

이런식으로 튜플로 묶어서 사용하는 것이 가능하며 `(404, _)`와 같은 case로 나누어져 있는데 이건 secondErrorCode에 상관없이 firstErrorCode가 404인 경우를 나타내는 것 같다. 



#### 