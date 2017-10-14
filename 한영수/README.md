## DeproMeet Swift study

#### WEAK1


디프만 Swift Study를 시작해볼까요?   
디프만? [디프만 홈페이지 바로가기](http://www.depromeet.com/)


### 자료형 선언 

```swift
var a = 'foo' // 변수를 담을 수 있죠?
let b = 'pee'// 상수만 담을 수 있죠

var a: Int = 100 // 스위프는 자료형을 : 뒤에 명시해 주네요(타입 어노테이션)
let b: String = "constant" // 문자열은 ' '도 되고 " " 도 됩니다. ;은 option!
```
1. 변수는 `var`에다가! 상수는 `let`에다가!   
2. 자료형을 명시해 줄 때는 name 뒤에 : 을 붙이고 명시 해 줍니다   
3. 세미콜론은 ``option``입니다   
4. 타입어노테이션도 사실 ``option``이지만 일치하지 않은 타입을 할당하려고 하는 경우 ``warning``을 준다는 점에서 활용하면 좋을 것 같네요

### 문자열삽입(Interpolate) 

```swift
let name: String = "youngsoo"
let age: Int = 27 // ㅠㅠ
let introduce: String = "\(name) is \(age) years old"
```
이건 뭐 굳이 설명을 적지 않아도... 좋은 기능입니다 ㄷㄷ   

### switch문 

```swift

var statusCode: Int = 404
var errMSG: String = "Calm and Check this errMsg : "

switch statusCode {
case 100, 101:
    errMSG += "Informational, 1.xx"
case 204:
    errMSG += "Successful. but no contents"
case 300...307:
    errMSG += "Redirecton. 3.xx"
case 400...417:
    errMSG += "Client error. 4.xx"
default:
    errMSG = "I don't know why this error comes up :("
}
	
```
`case`문 안에서 `...`키워드를 통해 범위를 지정해 줄 수 있네요(Int형)

### switch안에서의 where


```swift
var statusCode: Int = 600
var errMSG: String = "Calm and Check this errMsg : "

switch statusCode {
case 100, 101:
    errMSG += "Informational, 1.xx"
case 205:
    errMSG += "Successful. but no contents"
case 300...307:
    errMSG += "Redirecton. 3.xx"
case 400...417:
    errMSG += "Client error. 4.xx"
case let unKnownCode where (unKnownCode >= 200 && unKnownCode < 300)
    								|| unKnownCode > 505 :  
    errMSG += "\(unKnownCode) is not a known error code"
default:
    errMSG += "ha.. I really don't know the error"
}
	
```
다른 언어와 구분되는 특이한 문법이네요.. 코드만 봐도 어느정도 어떤 결과가 나올지 예상이 되지만 `case`키워드 뒤에 상수를 선언해 주고 `where`키워드를 통해 조건을 줄 수 있습니다.
음...쓸 때가 있겠죠?


### 튜플
```swift
var statusCode: Int = 600
var errMSG: String = "Calm and Check this errMsg : "

switch statusCode {
case 100, 101:
    errMSG += "Informational, 1.xx"
case 205:
    errMSG += "Successful. but no contents"
case 300...307:
    errMSG += "Redirecton. 3.xx"
case 400...417:
    errMSG += "Client error. 4.xx"
case let unKnownCode where (unKnownCode >= 200 && unKnownCode < 300)
    								|| unKnownCode > 505 :
    errMSG += "\(unKnownCode) is not a known error code"
default:
    errMSG += "ha.. I really don't know the error"
}

let error = (statusCode, errMSG)

```
위의 상수 error가 바로 `튜플`입니다. 사실 이 `튜플` 문법을 제공해주는 언어는 많이 없는 걸루 알고 있는데, 튜플의 각각요소에 접근 하려면 다음과 같이 하면 됩니다

```swift
...
let error = (statusCode, errMSG)
error.0 // 튜플의 첫 번째 요소
error.1 // 튜플의 두 번쨰 요소

```

아무래도 이게 좀 어색하다면 아래처럼 이름도 지어 줄 수 있습니다

```swift
...
let error = (code: statusCode, message: errMSG)
error.code 
error.message 

```

### 옵셔널

옵셔널은 매우 안전지향적인 스위프트만의 문법이라고 할 수 있습니다.
옵셔널이 뭔지 간단하게 얘기하자면 이 인스턴스는 "`nil`이 될 수 있어!" 라고 말하는 겁니다

예제를 통해 볼까요?

```swift
var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString) // Optional("404")
```

`?` 이게 뭐지? 이렇게 옵셔널을 설정해 줄떄는 변수나 상수 뒤에 `?`를 적어줍니다
`print(errorCodeString)`를 통해 로그를 보니 `Optional("404")`라는 이상한 걸 보여주네요
