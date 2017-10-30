---
title: CH10. Dictionary
categories:
  - SWIFT candy
tags: [컬렉션, 딕셔너리]
---

# CHAPTER10 / Dictionary

<br>
<br>

## 딕셔너리
- - -
- `Key` 와 `value`의 쌍으로 담아두는 컬렉션 타입이다.
- Array 타입은 요소들의 순서가 중요한 컬렉션인 반면 **딕셔너리**는 일련의 정보만 담아두고 필요할 때마다 꺼내오기 적합하다.
- Dictionary 타입의 인스턴스에 `Key`를 제공하면 이와 연결된 `value` 값이 return 된다.
- key값은 중복되면 안된다. 고유한 값이여야 한다.
- Dictionary 타입의 키는 반드시 **해시가능 (hashable)** 햐야 한다.
- **Hash** :: 임이의 크기를 가진 데이터를 고정된 데이터의 크기로 변환시키는 것을 말한다. 이를 이용해 <U>특정한 배열의 인덱스나 인덱스의 데이터값을 이용해 저장하거나 찾을 수 있다.</U>


<br>

### A. 딕셔너리 만들기
- - -
1. 선언하기
  ```swift
var dict1: Dictionary<String, Double> = [:]
var dict2 =  Dictionary<String,Double>()
var dict3: [String:Double] = [:]  // 리터럴 방식 사용
var dict4 = [String:Double]() // 초기화 방식 사용
  ```

2. 딕셔너리에 내용물 넣기
```swift
var dessert = ["에끌레어":4 , "치즈케이크":2, "타르트":1]

//사용가능 메서드
dessert.count   //3
dessert["에끌레어"]   //key값으로 value에 접근하기
```

단, `dessert[string:]`은 값이 없을 수도 있기 때문에 `Int?` 를 반환한다.

<br>

### B. 딕셔너리 수정 및 제거하기
- - -
1. value값 업데이트하기

```swift
var whatValue :Int? = dessert.updateValue(0, forKey: "치즈케이크")   //return 변경전 값 & 옵셔널

if let whatValue = whatValue {
    print(whatValue)
}
```

2. 값 추가와 제거

```swift
dessert["마카롱"] = 3      //append

//삭제된 키의 value의 옵셔널 리턴
if let whatdel = dessert.removeValue(forKey: "치즈케이크") {
    print(whatdel)
} //remove
```

<br>

### C. 루프 적용하기
- - -
Dictionary 타입은 키-값 쌍을 반복 처리할 수 있는 편리한 방법을 제공하고 있다.
키,값에 해당하는 상수들로 분리 구성하고 이를 `for-in`루프 안에 **튜플** 형태로 두는 방법이다.

#### CODE
```swift
for (key,value) in dessert {
    print("\(key)가 \(value)개 남았습니다.")
}

// 출력:
//타르트가 1개 남았습니다.
//마카롱가 3개 남았습니다.
//에끌레어가 4개 남았습니다.
```

키값을 Array에 저장하기
```swift
let ateDessert = Array(dessert.keys)
// 출력 : ["타르트", "마카롱", "에끌레어"]

let ateDessert = Array(dessert.value)
// 출력 : [1, 3, 4]
```

<br>
