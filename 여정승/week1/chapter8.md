# Chapter8 - 옵셔널

- swift에서는 옵셔널이라는 기능이 있는데 자바나 obj에는 없는 개념이라 공부하는데 조금 신경을 써야 될거 같음.

## 옵셔널 타입
- swift에서는 옵셔널을 사용해야 nil을 포함 할 수 있다. 그러한 기능은 swift에서 안정 장치 역할을 한다고 설명하고 있는데 개념적으로 이해하기가 조금 어렵다.

- ? 를 사용하여 인스턴스에 nil을 포함하겠다고 선언을 함

```
var errorCodeString: String?
print(errorCodeString)          // nil
```

- 옵셔널을 사용하면 출력시 unwrapping 작업을 해주어야함.

```
var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString!)
```

## 옵셔널 바인딩
- 옵셔널 바인딩은 어떤 옵셔널에 값이 있는지 판단할 수 있는 유요한 패터닝라고 설명하고 있음.

```
if let temporaryConstant = anOptinal {
        //  temporayConstant로 어떤 일을 한다.
    } else {
        // anOptional에는 값이 없. 즉 anOptional은 nil이다.
    }
```

```
var errorCodeString: String?
errorCodeString = "404"

if let theError = errorCodeString {
print(theError)
}
```

## 암묵적으로 언래핑된 옵셔널
- 옵셔널 값을 줄때 ?를 사용하여 nil값을 포함하게 하였지만 ! 를 바로 사용하여 unwrapping작업을 한번에 할 수 있음.

```
var errorCodeString: String!
errorCodeString = "404"
print(errorCodeString)
```


