Chapter12 - 함수
================

- 구체적인 테스크를 수행하는 코드 집합

## 함수의 기초

```swift
func printGreeting(){
    print("Hello, playground.")
}
printGreeting()
```

## 함수의 파라미터
- 함수를 호출한 caller가 그 함수로 전달한 데이터에 따라 값이 변경될 수 있다는 것
- 파라미터는 (함수내부에서 사용될 이름 : 데이터 타입)으로 정의한다.
```swift
func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting(name: "Matt")
```

- 함수에서 사용할 수 있는 파라미터의 이름은 외부 파라미터와, 내부 파라미터 2가지가 존재한다.
- 외부 파라미터는 함수를 호출할 때 사용되는 네임
- 내부 파라미터는 함수 내부에서 사용되는 인자 네임

```swift
func printPersonalGreeting(to name: String){
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting(to: "Matt")
// 함수를 호출할 때에는 to 라는 이름을 사용하고 함수 내부에서는 name을 사용
```

## 가변 파라미터
- 파라미터는 인수에 해당하는 값을 하나도 전달받지 않을 수도 있고 여러개를 받을 수도 있음
- 가변 파라미터는 파라미터의 타입 다음 점 세 개를 붙여 만든다.

```swift
func printPersonalGreetings(to names: String...){
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings(to : "Alex", "Chris", "Drew", "Pat")
```

- 스위프트의 파라미터에는 기본값을 설정할 수 있다.
- 기본값은 함수의 파라미터 리스트 끝에 두어야 한다.

```swift
func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") {
    print("\(numerator) divided by \(denominator) equals
            \(numerator / denominator) \(punctuation)")
}

divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")
```

- 함수에서 인수의 값을 수정해야 할 경우도 있다.
- 함수 밖에서도 변수의 통제권을 발휘하기 위해 인아웃 파라미터를 사용한다.
> - 인아웃 파라미터는 기본값을 가질 수 없다.
> - 가변 파라미터에는 inout을 적용할 수 없다.
- inout 파라미터에 전달되는 변수는 앞에 &가 붙어야 한다.
> - 변수가 함수에 따라 수정된다는 뜻
- 함수의 인자 앞에 _ 기호가 붙으면 인자 이름을 무시할 수 있다.
```swift
var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400{
        errorString += "bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
```
## 결과 리턴하기
- 리턴 값은 -> String 문법 구조로 표현된다.
> - 지정된 타입의 인스턴스를 리턴한다는 의미
```swift
func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String{
    return "\(numerator) divided by \(denominator) equals
            \(numerator / denominator) \(punctuation)"
}
```

## 함수의 중첩과 영역
- 스위프트에서는 함수를 중첩해서 정의할 수 있다.
- 중첩된 함수는 다른 함수의 정의 안에서 선언되고 구현된다.
> - 선언되고 구현된 곳 밖에서는 사용할 수 없다.
```swift
func areaOfTriangleWith(base: Double, height: Double) -> Double{
    let numerator = base * height
    func device() -> Double{
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)
```

## 복수 리턴값
- 스위프트에서는 하나보다 많은 값을 리턴할 수 있다.
- 튜플 데이터 타입을 사용하여 반환한다.
```swift
func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10,1,4,57,....]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens);
        the odd numbers are: \(theSortedNumbers.odds)")
```

## 옵셔널 리턴 타입
- 함수에서 옵셔널 타입을 리턴해야할 경우도 발생한다. 
- nil을 리턴해야할 필요도 있기때문
```swift
func grabMiddleName(fromFullName name: (String, String?, String)) -> String?{
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
if let theName = middleName{
    print(theName)
}
```

## 함수에서 중도에 빠져나오기
- 파이썬의 break기능을 하는 키워드
- **guard** 구문을 사용한다.
> - guard는 조건문과 같이 if/else로 사용할 수 있다.
```swift
func greetByMiddleName(fromFullName name: (first: String,
                                            middle: String?,
                                            last: String)){
    guard let middleName = name.middle else{
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt", "Danger", "Mathias"))
```

