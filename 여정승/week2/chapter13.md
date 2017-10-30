# Chapter13 - 클로저

- 클로저를 사용하면 함수를 유연하게 사용 할 수 있다는 장점이 있어 보인다. 클로저 의 문법 수식으로는 중괄호 안에 클로저 수식을 두는 형태를 나타낸다고 한다.

```
{(parameters) -> return type in
    //코드
)}
```

- 책에서 나오는 예시를 들어 보자

```
let vounteerCounts = ["q", "a", "b", "s"]
let volunteersSorted = vounteerCounts.sorted(by: {
    (i: String, j: String) -> Bool in
    return i < j
})

print(volunteersSorted)         // ["a", "b", "q", "s"]
```

- 위의 예시에서 다른 언어에서 보기 힘든 형태를 나타내고 있는데 저 형태를 보면 중괄호 안에 소괄호를 넣고 참인 조건을 만족하면 실행이 되는 형태로 보여진다. sorted(by:) 메소드는 정렬을 해주는 함수인데 배열의 첫 번째 파라미터를 i에 받고 두번째 파라미터를 j 받고 조건이 참이면 sorted 즉 정렬이 되는 형태를 나태나고 있는데 형태가 생소해서 그런지 유연한지는 잘 모르겠다.

## 축약형 인수명 문법 구조 적용하기

- 위의 내용 보다는 아래의 축약형이 나한테는 좀 더 유연하게 사용 될 거 같다. 위의 형태는 새로운 형태로 사용되어 보다 자세한 코드가 가능하겠지만 아래의 축약형은 매우 간단하여 사용하기 유연 할 거 같다.

```
let volunteerCounts = [1,3,40,32,2,53,77,13]
let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

print(volunteersSorted)
```

- 아래의 리턴 타입 역할을 하는 함수에서 이해가 잘 되지 않는다.

```
let volunteerCounts = [1,3,40,32,2,53,77,13]
let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

func makeTownGrand() -> (Int, Int) -> Int{
func buildRoads(byAddingLights lights: Int,
            toExistingLights existingLights: Int) -> Int {
    return lights + existingLights
    }
    return buildRoads
}

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")         // Knowhere has 8 stoplights.
```

- 위의 값이 8이 나오는 것이 이해가 안되는 것이 아니라 왜 makeTownGrand에 인자를 넣어주면서 townPlanByAddingLightsToExistingLights 상수에 담을 수 없는지가 잘 이해가 되지 않는다.

```
let townPlanByAddingLightsToExistingLights = makeTownGrand(3, 3)
// error: argument passed to call that takes no arguments
```



