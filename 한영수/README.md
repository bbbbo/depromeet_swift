스위프트 공부 서적
===
<img src="http://image.kyobobook.co.kr/images/book/xlarge/937/x9791185890937.jpg" width="200">
### 빅너드 랜치의 스위프트 프로그래밍
매튜 마티아스 , 존 갤러거 지음 | 배장열 옮김 | 제이펍 |  

## WEEK1


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


그렇다면 다음처럼 errorCodeString을 주석 처리 해볼까요?

```swift
var errorCodeString: String?
//errorCodeString = "404"
print(errorCodeString) // Optional("404")
```
그럼 `nil`값을 보여줍니다.
바로 errrCodeString이 `nil`값이 될 수 있음을 보여주는거죠

이렇게 스위프트의 옵셔널은 안전정치 역할을 하는데, `nil`이 될 수 있는 인스턴스는 반드시 옵셔널 타입으로 선언해야합니다. 즉, 옵셔널이 적용되지 않은 인스턴스는 `nil`이 될 수 없다는거죠. 스위프트 컴파일러는 이런 틀에 따라 인스턴스가 `nil`이 될 수 있는지를 판단합니다. 개발자 입장에서는 인스턴스를 명시적으러 선언했기 때문에 코드의 독해력과 안정성을 높일 수 있죠.

### 옵셔널 강제 언래핑(forced unwrapping)
강제 언래핑을 적용하면 optional 인스턴스 값에 액세스(Access)할 수 있게 됩니다.
다음 예제를 봅시다.

```swift
var errorCode: String?
errorCode = "404"

errorCode != nil ? print(errorCode!) : print(errorCode) // "404"
```
`!`를 optional인스턴스 뒤에 붙이게 되면 Optional이 없어지고 실징적인 "404" (string)값을 얻을 수 있습니다. 하지만 `!`강제 언래핑을 nil에다 적용하게 되면 예기치 않은 오류를 발생시키기 때문에 위의 코드처럼 nil인지 아닌지 먼저 체크하는 코드를 넣어주는게 바람직합니다^^

### 옵셔널 체이닝(optional chaining)

옵셔널 체이닝(Optional Chaining)이란 어떤 옵셔널 값이 체인처럼 물리고 물려있음을 의미합니다.

다음 예제를 봅시다

```swift
var errCodeString: String?
errCodeString = "404"
var errDescription: String?

if let theErr = errCodeString, let errorCodeInteger = Int(theErr),
        errorCodeInteger == 404 {
    
    errDescription = "\(errorCodeInteger + 200): resource was not found"

}

var upCaseErrorDescription = errDescription?.uppercased()
print(upCaseErrorDescription) // Optional("604: RESOURCE WAS NOT FOUND")

```
위의 코드에서 errorDescription에 붙은 ?는 이 코드 행이 옵셔널 체이닝 과정의 시작임을 알린다. errorDesctiption에 값이 없을 떄는 대문자로 변환할 문자가 없으므로 upCaseErrorDescription이 `nil`로 설정됩니다. 바로 이 시점이 옵셔널 체이닝에 따라 옵셔널이 리턴되는 시점이죠. `nil`이 리턴되든, `Optional("604: RESOURCE WAS NOT FOUND")`이 리턴 되든 결국 모두 optional인스턴스입니다.

### nil결합 연산자 
옵셔널을 처리 할때는 값을 가져오거나 옵셔널이 `nil`일 때 기본값을 사용하는 것이 일반적입니다.
다음 코드를 보겠습니다.

```swift
let description: String
if let errorDescription = errorDescription {
	description = errorDescription
} else {
	description = "No error"
}
```
위의코드처럼 `옵셔널 바인딩`을 사용해서 코드를 비교적 간결하게 줄일 수 있지만, 다음처럼 `nil결합 연산자`를 사용하면 더욱 코드를 더 짧게 줄일 수 있습니다<del>(가독성면에서는 잘 모르겠네요...)</del>

```swift
<!--let description: String-->
<!--if let errorDescription = errorDescription {
	description = errorDescription
} else {
	description = "No error"
}-->
let description = errorDescription ?? "No error"
```
`??`왼쪽에는 옵셔널 인스턴스가 오른쪽엔 비 옵셔널 인스턴스가 와야됩니다
보시다시피 `??`왼쪽(옵셔널) 인스턴스가 nil이 아니라면 옵셔널이 리턴되고 nil이라면 오른쪽 인스턴스(비 옵셔널)가 리턴 되겠네요

## WEEK2

### 배열 
개발하면서 쓸 수 밖에 없는 배열이네요.
스위프트에서 배열은 다음의 모양입니다.

```swift
var bucketList: [string] = ["clime Mt. BackDoo"]
// 또는
var bucketList = ["clime Mt. BackDoo"]

```
배열에 새로운 원소를 추가 하고 싶다면?

```swift
var bucketList: [string] = ["clime Mt. BackDoo"]
// 또는
var bucketList = ["clime Mt. BackDoo"]
buckerList.append("World tour!")

```
위처럼 `append(_:)`메서드를 이용해서 추가하면 됩니다.최소 배열이 string 배열로 만들어 졌으니 새로운 배열도 역시 string으로 들어가야겠죠?

추가하는 걸 배웠으니 삭제하는것도 알아아죠

```swift
var bucketList = ["Climb Mt. BackDoo"]
bucketList.append("World Tour!")
bucketList.append("Master Swift!")

bucketList.remove(at: 2)
// ["Climb Mt. BackDoo", "World Tour!"]

```
이처럼 `remove(at: index)`를 이용해서 index에 해당하는 원소를 지울 수 있네요.

```swift
var bucketList = ["Climb Mt. BackDoo"]
bucketList.append("World Tour!")

bucketList[1] += " first country is america"
// ["Climb Mt. BackDoo", "World Tour! first country is america"]
```

이런식으로 원소에 `+=` 서브스크립트를 사용해서 각 원소에 추가된 정보를 입력 할 수도 있습니다.

배열에서 어떠한 나열되는 데이터를 여러개 추가 하고 싶으면 어떻게 할까요?
`append()`를 여러번 호출해서 원소를 추가 할 수도 있곘지만 다음처럼 `for-in` 루프를 사용하면 편합니다.

```swift
var bucketList = ["Climb Mt. BackDoo"]
bucketList.append("World Tour!")

bucketList[1] += " first country is america"

var newItems = ["master Swift", "master computer Science", "make gf"]

for item in newItems {
    bucketList.append(item)
}
// ["Climb Mt. BackDoo", "World Tour! first country is america", "master Swift", "master computer Science", "make gf"]

```

위의 방법대로라면 새로 추가되는 원소는 계속 마지막 인덱스로만 추가가 가능하죠
하지만 기존 원소 중간에 새로운 데이터를 추가 하고 싶다면 `insert(_:at:)`메소드를 사용합니다.

```swift
var bucketList = ["Climb Mt. BackDoo"]
bucketList.append("World Tour!")

bucketList[1] += " first country is america"
bucketList.insert("make Much money!", at: 0)
// ["make Much money!", "Climb Mt. BackDoo", "World Tour! first country is america"]

```
자바스크립트에서는 상수로 선언된 배열도 `push()`나 `pop()`을 통해서 배열의 원소를 컨트롤 할 수 있지만, swift에서는 배열이 `let`으로 선언 돼 있다면 배열을 변경할 수 없네요

> cannot use mutating member on immutable value: 'bucketList' is a 'let' constant


### 딕셔너리

딕셔너리의 키값은 반드시 `hashable`해야합니다. 즉 저마다 모든 key값은 하나밖에 없어야하는거죠. 스위프트의 기본타인 `String` `Int` `Float` `Double` `Bool` 등은 모두 해시가능하기 때문에 딕셔너리의 키값으로 사용 될 수 있습니다.

```swift
var dict1: Dictionary<String,Double> = [:]
var dict2 = Dictionary<String,Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()

```
위의 코드처럼 딕셔너리 인스턴스를 생성하는 방법은 다양합니다.
`[:]`코드는 리터럴 문법 구조를 이용해서 딕셔너리 타입의 빈 인스턴스를 생성하는 것이고, `()`문법 구조는 딕셔너리 타입의 기본 초기화 방식을 사용해서 인스터스를 만드는거죠

다음은 실제로 값을 만들어 대입하는 방법입니다

```swift
var movieRating = ["범죄도시": 8.4, "범죄와의 전쟁": 9.5, "어벤져스3": 9.9]

```
실제로 딕셔너리 데이터를 만들고 나서 이런식으로 딕셔너리 인스턴스를 다룰 수 있습니다

```swift
var movieRating = ["범죄도시": 8.4, "범죄와의 전쟁": 9.5, "어벤져스3": 9.9]
print("I have rated \(movieRating.count) movies")
// I have rated 3 movies
var avengersRating = movieRating["어벤져스3"]
print(avengetsRating)
// Optional(9.9000000000000004)

```

위의 avengersRating을 print 해보면 `optional` 값이 나온걸 확인 할 수 있네요.
실제로 `var avengetsRating: Double?` 이런식으로 `optional`값을 리턴하는데, 이는 실제로 해당하는 `key`값과 매칭되는 `value`가 없을 수도(nil) 있기 때문이죠.

딕셔너리의 어떤 값(value)을 수정해 주고 싶다면 아래의 방법을 사용 할 수 있습니다.

```swift
var movieRating = ["범죄도시": 8.4, "범죄와의 전쟁": 9.5, "어벤져스3": 9.9]

movieRating["범죄와의 전쟁"] = 10.0
movieRating.updateValue(9.0, forKey: "범죄도시")

```

여기서 __주의__ 할 점이 있습니다. `updateValue(_:forKey:)` 메서드는 변경 되기 전의 `value` 옵셔널을 리턴합니다.

```swift
var movieRating = ["범죄도시": 8.4, "범죄와의 전쟁": 9.5, "어벤져스3": 9.9]
var oldRate = movieRating.updateValue(9.0, forKey: "범죄도시")
print(oldRate)
// Optional(8.4000000000000004)

```

값을 업데이트 하는 방법을 알았으니, **추가** 하거나 **제거** 하는 방법을 알아봅시다

__추가__

```swift
movieRating["토르-라그나로크"] = 8.6
movieRating.updateValue(3.0, forKey: "디워") // nil

```
새로운 key에 대입연산자를 통해 새로운 `value`를 넣어주던가, 새로운 key에 `updateValue(_:forKey:)`를 통해 새로운 값을 + 해줄 수 있습니다

__제거__

```swift
movieRating.removeValue(forKey: "토르-라그나로크")
movieRating["범죄와의 전쟁"] = nil

```
제거는 위처럼 `removeValue(forKey:)`메서드를 사용하던가, 실제 key에 `nil`을 대입함으로써 값을 제거 할 수 있습니다.

딕셔너리는 `루프`도 적용 가능합니다. 다음 예제를 볼까요


