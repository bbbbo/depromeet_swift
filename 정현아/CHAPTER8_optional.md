# CHAPTER8 / Optional
<br>
<br>

## 옵셔널
- - -
옵셔널(Optional)은 어떤 인스턴스 *값이 없을 수도 있다*는 일종의 안내다.
* 인스턴스 값이 지정되어 있고 언제든 사용될 수 있다.
* 인스턴스에 지정된 값이 없다.
* 값이 없는 인스턴스를 `nil` 이라 한다.

<br>

## 옵셔널 타입
- - -
* 일종의 <U>안정장치</U>로써, **nil**이 될 수도 있는 인스턴스는 반드시 옵셔널 타입으로 선언해야한다.
* 옵셔널 타입이 아니면 *nil이 될 수 없다*.
* 옵셔널 이라고 명시함으로 인해서 코드의 가독성과 안정성이 높아진다.
* 옵셔널 타입은 언래핑하지 않으면 변수에 지정하지 못한다. (wrapping되어 있음.)

### CODE

```swift
var yesOrNoString: String?
yesOrNoString = "옵셔널"

//출력: Optional("옵셔널")

```
만약 위 코드에서 `yesOrNoString`에 아무값도 넣어주지 않았다면, `nil`을 출력한다.
nil이 아니라면 `Optional("<string>")`과 같이 옵셔널에 쌓여 출력된다.


```swift
var yesOrNoString: String?
//yesOrNoString = "옵셔널"

if yesOrNoString != nil {
    let String = yesOrNoString!
    print(String)
} else {
    print("run-time error")
}

//출력: 옵셔널
```

위와 같이 강제 언래핑으로 (`yesOrNoString!` ) yesOrNoString에 강제 엑세스를 할 수 있다.  
그러나 강제 언래핑 시에 해당 값이 nil 일 경우 run-time error로 crash 될수 있다.  
때문에 반드시 *nil이 아닌지 검사 후* 언래핑 해야 한다.

<br>

## 옵셔널 바인딩(binding)
- - -
어떤 옵셔널 값의 유무를 판단할 수 있는 유용한 패턴이다.
옵셔널에 값이 있다면 상수나 변수에 그 값을 지정할 수 있다.   
값이 있다면 변수에 넣고 해당 변수로 코드를 실행할 수 있다.

```swift
var box : String? = "고양이"
if let object  = box {
    print("\(object)가 들어있다")
}else {
    print("nil이다")
}
```
<br>

## 옵셔널 체이닝
- - -
* 옵셔널에 값의 유무를 판단하는 할 수 있다.
* 사슬처럼 연달아 이어서 조회할 수 있다.

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
<br>

## nil 결합 연산자
- - -
* 옵셔널을 처리할 때는 값을 가져오거나 옵셔널이 nil일 때 기본값을 사용하는 것이 일반적이다.

```swift
let description = errorDescription ?? "No error"
```
