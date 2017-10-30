---
title: CH13. Closure
categories:
  - SWIFT candy
tags: [클로저,함수]
---

# CHAPTER13 / Closure
- - -
클로저는 애플리케이션에서 특정 태스크를 수행하기 위해 사용 될 수 있는 각종 기능들의 개별 묶음을 말한다. 그 예로 함수는 클로저의 일종으로 *'이름있는 클로저'*라 할 수 있다.

- 클로저는 문법 구조가 간결하다.
- 온전한 선언 구조를 따르지 않아도 함수와 비슷한 구조를 만들 수 있는 장점이 있다.
- 유연성 높은 클로저의 구조 덕분에 함수의 인수나 리턴값을 쉽게 전달할 수 있다.

<br>

### 클로저의 구조
- - -
- 기본적으로 `{}` 안에 클로저 수식을 두며, `in` 키워드를 기준으로 파라미터와 리턴 타입을 실행코드와 구별시킨다.
- 클로저를 통해 밖에 따로 함수를 정의하고 사용하는 것이아니라, 인수 안에 인라인으로 정의하여 코드가 한결 간결해진다.

<br>

#### CODE :: Basic

```swift
// 기본형태
{(parameters) -> return type in
    //코드
}


// sorted 함수에서의 클로저 사용예

let unsortedNum = [10,34,22,1,0,25, 21]
let unsortedName = ["hyunah","hyunsik","wooni","alert"]

let sortNum = unsortedNum.sorted(by: {
    (i:Int, j:Int) -> Bool in
    return i < j
})
```

<br>

#### CODE :: more simple
```swift
let sortNum = unsortedNum.sorted(by: { i,j in i < j })
```

컴파일러가 자동으로 i,j를 인식하여 인수가 두개이며, 이 두 인수를 비교하여 수식의 결과가 Bool 인스턴스 임을 인식하기 때문에 위와 같이 생략 가능하다.
위와 같은 상황에서는 return 값이 하나이기 때문에 생략이 가능하다.

<br>

```swift
//예시 1
let sortNum = unsortedNum.sorted(by: { $0 < $1 })

//예시 2
func plus(message: String) -> (String,String) -> String {
  return { $1 + $0 + message }
}
```

`$0`을 통해서도 축약형 인수명 문법 구조를 적용할 수 있다.
첫번째 인수를 `$0`으로, 두번째 인수를 `$1`로 나타내며, 인수가 2개 이상일 경우 `$2`,`$3` 등으로도 나타낼 수 있다.

<br>

### 함수형 프로그래밍
- - -
swift는 함수형 프로그래밍을 지향한다.  
따라서 함수가 *리턴타입* 및 *파라미터*의 역활도 한다.

#### CODE :: return
```swift
//return type 역활을 하는 함수
func Bake() -> (Int,Int) -> Int {
    func ovenEnergy (heat:Int, ea: Int ) -> Int {
        return heat + ea
    }
    return ovenEnergy
}

let macaroon = Bake()
let needEnergy = macaroon(2,3)

print("macaroon needs \(needEnergy) energy")
//출력 : macaroon needs 5 energy
```

위 코드에서 `ovenEnergy`는 `Bake()` 함수에서 **리턴타입** 으로 쓰였으며, 중첩된 함수로 쓰였다.

<br>

#### CODE :: parameter
```swift
//인수 역활을 하는 함수
func Bake() -> (Int,Int) -> Bool {
    func ovenEnergy (heat:Int, ea: Int ) -> Bool {
        return heat  > ea
    }
    return ovenEnergy
}

let macaroon = Bake()
let needEnergy = macaroon(2,3)

print(needEnergy)
//출력 : false
```

<br>

### 클로저의 특징
- - -
1. 클로저는 값을 붙잡고 있는다 : 자신의 영역에서 정의된 변수에 캡슐화된 내부 정보를 추적할 수 있다.
2. 클로저는 참조 타입이다. 즉 복사본이 만들어 지는 것이 아니라 그 함수를 가리키도록 설정되는 것이다.
3. 함수형 프로그래밍 피턴을 일부 도입했다.

<br>

### 함수형 프로그래밍
- - -
- **일급 함수(first-class function)** : 다른 함수에서 리턴되거나 인수로 전달 될 수 있고 변수에 저장될 수도 있는 함수.
- **순수 함수(pure function)** : 부작용이 없는 함수. 수정되지 않으며 출력이 언제나 같다(인수에 따라서 출력이 변하지 않는다). 그 예로 수학 함수 대부분은 순수함수이다.
- **불변경성** : *mutable*은 경시된다.
- **강력한 타입지정 ** : 강력한 타입 시스템은 *코드의 런타임 안전성을 높인다* 예를 들어 let은 변경할 수 없는 인스턴스를 선언한다.

- 함수형 프로그래밍의 장점은 *코드가 간결*해지며 표현력이 높아지고, *안정성을 확보*할 수 있게된다.
- 스위프트의 함수들은 **일급 객체(first-class-citizen)**를 나타낸다.

<br>

### 고차함수(higher-order function)
- - -
인수로 **함수**를 받는 함수.
아래 대표적 고차함수 세가지를 설명한다.

<br>

#### map(_:)
- - -
- 배열의 내용물을 변형하는 데 사용할 수 있다. 배열의 내용물을 한 값에서 다른 값으로 **매핑하고** 새 값을 새 배열에 넣는다.
- Array 타입에 구현되어 있다.


```swift
let unsortedNum = [10,34,22,1,0,25, 21]

//map 함수
let plusNum = unsortedNum.map {
    (number: Int) -> Int in
    return number + 10
}

print(plusNum)

//출력 : [20, 44, 32, 11, 10, 35, 31]
```
`plusNum`이라는 새로운 배열에 담았다.

<br>

#### filter(_:)
- - -
- 배열을 어떤 기준에 따라 *걸러내는* 함수이다.
- 결과 배열은 테스트를 통과한 원래 배열의 값에 담게 된다.
- Array 타입에 구현되어 있다.

```swift
let unsortedNum = [10,34,22,1,0,25, 21]

//filter 함수
let filterNum = unsortedNum.filter{
    (number: Int) -> Bool in
    return number > 20
}

print(filterNum)
//출력 : [34, 22, 25, 21]
```


<br>

#### reduce(_:_:)
- - -
- 컬랙션 내 값들을 함수로부터 리턴된 하나의 값으로 축소시킨다.
- 첫번재 인수는 **처음 더해질 수 있는 초기량** 이며, 두번째 인수는 컬랙션 내 **값이 결합되는 방식을 정하는 클로저** 이다.

```swift
let unsortedNum = [10,34,22,1,0,25, 21]

//reduce 함수
let reduceNum = unsortedNum.reduce(10) {
    //값이결합되는 방식의 클로저
    (num: Int, sum: Int) -> Int in
    return num+sum
    }

print(reduceNum)
//출력 : 123
// 모든 배열의 값 + 초기값(10) = 123
```
