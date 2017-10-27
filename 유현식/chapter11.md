Chapter11 - 집합
================

- 일반적인 Set(집합)과 동일하다.
- Set에서는 중복된 값이 허락되지 않는다.

## Set 준비하기
- 집합 만들고 요소 추가하기

```swift
var groceryBag = Set<String>()

// insert의 반환값은 (inserted: Bool, memberAfterInsert: Element) 튜플
groceryBag.insert("Apples")
groceryBag.insert("Oranges")


// Set을 다음과 같이 생성할 수도 있다.
var groceryBag = Set(["Apples", "Oranges", "Pineapple"])

// for ~ in 루프로 반복문 접근 가능
for food in groceryBag{
    print(food)
}
```


## 집합 다루기
- contains(\_:) 라는 메서드를 통해 특정 항목이 Set에 들어있는지 확인할 수 있다.
```swift
var groceryBag : Set = ["Apples", "Oranges"...]

// 바나나가 집합에 없으니 false이다.
let hasBananas = groceryBag.contains("Bananas")
```

- union(\_:) 메서드를 사용해 두개의 집합의 합집합을 구할 수 있다.
- intersection(\_:) 메서드를 사용하면 교집합을 구한다.
- isDisjoint(with:) 메서트로 두개 집합사이의 공통요소를 제거할 수 있다.
```swift
var groceryBag : Set = ["Apples", "Oranges"...]
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
// 합집합 구하기
let commonGrocertyBag = groceryBag.union(friendsGroceryBag)

// 교집합 구하기
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roomatesGroceryBag)

// 서로소 구하기
let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roomatesSecondBag)
```
