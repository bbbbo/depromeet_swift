# Chapter 8 옵셔널
* 옵셔널
    * 어떤 인스턴스에 값이 없을수도 있다는 일종의 안내 (안전장치)

      ​

* 옵셔널이 적용된 인스턴스
    1) 인스턴스에 값이 지정되어 있고 언제든 사용될 수 있다
    2) 인스턴스에 지정된 값이 없다 = nil

    ​

* 어떤 옵셔널이 nil인지 판단하여 값이 있다면
    * 그 값을 사용할 수 있는 **옵셔널 바인딩**
    * 일련의 옵셔널 값을 함께 조회할 수 있는 **옵셔널 체이닝**




## 옵셔널 타입

* nil이 될 수도 있는 인스턴스는 반드시 옵셔널 타입으로 선언해야 한다
    (= 옵셔널 타입으로 선언되지 않은 인스턴스는 nil이 되지 못한다)

    ​

* 옵셔널 타입 선언 및 출력하기
```swift
var errorCodeString: String?    //옵셔널 선언
errorCodeString = " 404"    //주석처리하면 nil 출력
print(errorCodeString)  //Optional("404")
```




* 강제 언래핑 : 값이 있다고 단정짓겠다는 의미
```swift
if errorCodeString != nil {
    let theError = errorCodeString! //! = 강제언래핑
    print(theError)
}
```
옵셔널에 값이 없다면 런타임 오류 발생!


* !를 없애면 옵셔널 String 값 출력 => Optional("404")

* String?과 String은 다르다
    * String? 변수의 값은 언래핑하지 않으면 String 변수에 지정하지 못한다






## 옵셔널 바인딩

* 어떤 옵셔널에 값이 있는지 판단할 수 있는 유용한 패턴
```swift
if let temporaryConstant = anOptional {
        // tempotemporaryConstant로 어떤 일을 한다
} else {
        // ananOptional에는 값이 없다(nil)
}
```



* 옵셔널 바인딩 중첩하기
    * if let 바인딩 중첩
    * 코드 난해 가능성 (파멸의 피라미드)
    * 여러 옵셔널 언래핑하기
```swift
if let theError = errorCodeString, let errorCodeInteger = Int(the Error){
        //if let errorCodeInteger = Int(theError) {
            print("\(theError): \(errorCodeInteger)")
        //}
}
```

* 추가 판단은 쉼표(,) 하고 조건 쓰기







## 암묵적으로 언래핑된 옵셔널

* 따로 옵셔널을 언래핑하지 않고 그 값에 액세스할 수 있다
```swift
var errorCodeString: String!    // 암묵적언래핑을 나타내는!
errorCodeString = "404"
print(errorCodeString)
```



* errorCodeString이 nil 일때
```swift
var errorCodeString: String! = nil404
//errorCodeString = "404"
//print(errorCodeString)
let anotherErrorCodeString: String = errorCodeString
let yetAnotherErrorCodeString = errorCodeString
```

* anotherErrorCodeString이 동작할까?
    * 함정에 빠진다 => 런타임 오류
      why? 명시적으로 선언된 anotherErrorCodeString은 옵셔널이 될 수 없다

      ​

    * yetAnotherErrorCodeString은 옵셔널? 암묵적 언래핑?
        * 옵셔널 (값이 nil인 String? 인스턴스)
        * let yetAnotherErrorCodeString: String! = errorCodeString
          => 컴파일러가 명시성을 요구하므로 옵셔널의 타입이 암묵적으로 언래핑되도록 선언해야 한다






## 옵셔널 체이닝

* 옵셔널 바인딩처럼 어떤 옵셔널에 값이 있는지 판단하는 방법 제공

* 어떤 옵셔널의 값에 여러 번 사슬처럼 이어 조회할 수 있다 - 옵셔널 바인딩과 차이점

* 체인에서 어떤 옵셔널이 값이 존재
    * 호출은 올바로 동작

    * 조회 체인은 예상 타입의 옵셔널 리턴

      ​

* 어떤 옵셔널 nil이면 nil 리턴
```swift
...
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {   //추가판단 (, 조건)
    //print("\(theError): \(errorCodeString)")
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
}

var upCaseErrorDescriprion = errorDescription?.uppercased() //? 옵셔널 체이닝 과정의 시작
errorDescription    //값이 없으면 upupCaseErrorDescriprion은 nil로 설정
```

=> "604: RESOURCE WAS NOT FOUND."







## 옵셔널을 준비된 상태로 수정하기

* 새 변수나 상수를 만들지 않아도 되도록 한다
* append(_:) 메서드 호출
```swift
...
upCaseErrorDescriprion?.append("please try again")  //?는 옵셔널 체이닝과 비슷하게 동작
upCaseErrorDescriprion
```






## nil 결합 연산자

* 옵셔널 ?? 비옵셔널


* 옵셔널 바인딩을 사용하여 errorDescription 파싱하기
```swift
...
let description: String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error"
}
```



* nil 결합 연산자 사용하기
```swift
let description = errorDescription ?? "No error"
```

