Chapter13 - 클로저
================

- 특정 태스크를 수행하기 위해 사용될 수 있는 가종 기능들의 개별 묶음..(무슨말?)
- 함수는 클로저의 일부
> - "이름 있는 클로저"

## 클로저의 문법 구조
- 함수를 정의할 때처럼 이름을 지정한다거나 온전한 선언 구조를 따르지 않아도 함수와 비슷한 구조를 만들 수 있다.
```swift
let volunteerCounts = [1,3,40,32,2,53,...]

func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteerSorted = volunteerCounts.sorted(by: sortAscending)
```

- 위의 코드는 문제가 없지만 조금더 깔끔하게 다듬을 수 있다.
```swift
let volunteerSorted = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})
```

- 위의 코드도 많이 간결해졌지만 타입 추론을 사용하여 좀더 간결하게 나타낼 수 있다.
- 여기서 return은 수식이 한줄이므로 생략한 것. 여러줄이라면 생략하면 안됌
```swift
let volunteerSorted = volunteerCounts.sorted(by: { i, j in i < j })
```

- 스위프트에서 인라인 클로저 수식에 사용할 수 있도록 축약형 인수명 기능 제공
```swift
let volunteersSorted = volunteerCounts.sorted(by: {$0 < $1})
```

## 리턴 타입 역할을 하는 함수
- 함수는 리턴값으로 다른 함수를 리턴할 수 있다.
```swift
func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int{
        return lights + existingLights
    }
    return buildRoads
}

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")
```
## 인수 역할을 하는 함수
- 함수는 다른 함수의 인수가 될 수 있다.
```swift
func makeTownGrand(withBudget budget: Int,
                    condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    // contidion: (Int) -> Bool 은 인자로 Int를 받아서 Bool을 리턴하는 함수를 인자로 받는 것을 의미한다.
    if condition(budget){
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int{
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000 //??
}
```

## 클로저, 값을 붙잡다
- 클로저와 함수는 자신의 영역에서 정의된 변수에 캡슐화된 내부 정보를 추적할 수 있다.
- 함수를 반환할 때 변수에 값을 지정해두면 해당 값이 그대로 저장되어 있다.
```swift
func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int{
    var totalPopulation = population // 값 잡아두기
    func populationTracker(growth: Int) -> Int{
        totalPopulation += growth
        return totalPopulation
    }
    return poopulationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
// 리턴 받은 함수에 5_422가 저장되어있다.
```

