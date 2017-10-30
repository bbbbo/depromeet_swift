---
title: CH11. Set
categories:
  - SWIFT candy
tags: [컬렉션, 집합]
---

# CHAPTER11 / Set

<br>
<br>

## 집합(Set)
- - -
- 서로 연관성이 없는 인스턴스들의 컬렉션 타입
- Array와는 다르게 *순서가 없으며* , 따라서 중복되는 요소도 허용되지 않는다.
- hashable 프로토콜을 준수해야 한다.

<br>

### Collection Type 비교

![컬렉션비교](/img/set.png)


<br>

#### CODE1 :: set 생성

```swift
var refrigerator = Set<String>()
refrigerator.insert("bread")
refrigerator.insert("fruits")
refrigerator.insert("water

for food in refrigerator {
    print(food)
}
//출력 : fruits , bread , water

```

<br>

#### CODE2 :: Array의 literal 문법 이용하여 생성
```swift
var refrigerator = Set(["bread","fruits","water"])

for food in refrigerator {
    print(food)
}
//출력 : 위와 상동
```

<br>

#### CODE :: method
```swift
//특정 요소가 있는지 확인, true,false를 return한다.
let hasFood = refrigerator.contains("gum")   //false

//합집합
let commonSet = refrigerator.intersection(freezer)

//서로소
// isDisjoint은 교집합이 없을경우 true, 있을경우 false를 return한다.
let disJoin = refrigerator.isDisjoint(with: freezer)
```
