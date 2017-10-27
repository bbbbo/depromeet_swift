# Chapter11 - 집합

## Set란 무엇인가?

- Set을 사용해보니 Dictinary와 매우 비슷한거 같다. 책에서도 Dictionary와 비슷하고 설명은 하고 있다. 그래도 다른점으로는 key와 value로 이루어져 있지 않고 오직 value? 로만 이루어져있음.

```
var groceryBag = Set<String>()

groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

for food in groceryBag {
    print(food)                  // Pineapple Apples Oranges
}
```

## 집합 다루기

- contains(_:) 라는 메소드를 책에서 설명하고 있는데 내용을 보면 주로 값이 존재하는지를 체크하는 것으로 boolean값으로 리턴을 해주는 형태로 보여짐.

```
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
let hasBananas = groceryBag.contains("Bananas")
let hasApples = groceryBag.contains("Apples")

print(hasBananas)                       // false
print(hasApples)                        // true
```

- 집합 내용 중 합집합, 교집합, 서로서를 다루는데 구현 소스를 보면 직접 value값을 넣어 이것이 중복 되는지를 안되었는지를 체크하는거 같아서 실제로 어떻게 사용 해야되는지 잘 이해가 되지 않음.

```
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)                  // 합집합

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)      // 교집합 부분 가져오기

for output in itemsToReturn {
    print(output)
}
```

