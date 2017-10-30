# Chapter5 - switch

 - switch문은 평소의 제 코딩 스타일에서는 잘 사용되지 않는 코드 입니다. 하지만 swift에는 switch문이 유연하고 강력함.
 - swift에서 switch문은 break를 써주지 않아서 되며 무조건적으로 default 구분을 넣어 주어야 된는데 break를 빠져도 되는 것이 무엇보다 괜찮은 점인거 같음.
```
let age: Int = 27

switch age {
    case 27 :
        print("jsyeo")
    default :
        print("default")
}
```

- break 구문 말고 fallthrough 구문이 존재하는데 이것은 case문 안에서 fallthrough를 만나면 밑에 부분을 실행 하지 않고 다음 case 조건을 맞는지를 다시 판단한다.

```
let age: Int = 27

switch age {
    case 27 :
        print("jsyeo")          // output
        fallthrough
        print("Test")           // Will never be executed
    default :
        print("default")        // output
}
```

- swift의 switch문에서는 '...'과 '..<' 구문이 존재하는데 예를 들어  '1 ... 10' 로 사용을 하면 1부터 10까지를 말한다. '1 ..< 10' 의 경우 1부터 9까지를 말함

```
// ...
var statusCode: Int = 404
var errorString: String = "The request failed with the error:"

switch statusCode {
    case 400 ... 417:       // 400부터 417까지 (417 포함)
        errorString += "Client error, \(statusCode)"
    case 400 ..< 418:       // 400부터 417까지 (418 미포함)
        errorString += "Ckuent error, \(statusCode)"
    default:
        errorString = "UnKown. please review the request and try again."
}
```

- 패턴 대조라는 것이 있는데 두가지 이상의 조건을 검사하는 방식이라고 볼 수 있음.
- "_"은 어떤 값이 와도 상관없이 진행을 하는 것으로 밑의 코드를 실행하면 "First item not found."가 실행 되는 것을 알 수 있음
- 코드를 작성 할 때 switch문을 자주 사용 하지는 않지만 swift 코드를 작성 할 때 는 if 보다 많이 사용 될 것 같음.

```
let firstErrorCode = 404
let secondErrorCode = 200

var errorString = (firstErrorCode, secondErrorCode)

switch errorString {
    case (404, 404):
        print("No items found.")
    case (404, _):
        print("First item not found.")
    case (_, 404):
        print("Second item not found.")
    default:
        print("All items found.")
}
```

- if문에서 case를 사용하면  유연하게 사용이 가능한 장점을 보임
- 아래의 코드에서 age가 범위에 있고 21보다 큰 값인지를 검사를 한다. 이렇게 유연하게 사용이 가능하지만 switch문의 사용하겠음

```
let age = 25

if case 18 ... 35 = age, age >= 21 {
    print("In cool demographic and of drinking age")
}
```

