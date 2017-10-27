# Chapter10 - 딕셔너리

- 딕션너리는 주로 json이라고 보면 쉬울거 같음. key와 value 로 key를 입력하여 value를 도출하는 방식으로 사용함.

```
var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()
```

- 주로 서버에서 값을 받아올때 서버에서 json으로 던져주면 딕셔너리로 받아서 처리를 하는데 사실 위의 형태로 받기보다는 배열로 받는 형태데 위 형태를 조금 변형 해야 받기가 편함.

```
var dict5 = [[:]]
print(type(of: dict5))          // Array<Dictionary<AnyHashable, Any>>
```

- any가 무엇인지를 이번 단원에서 할 내용은 아닌거 같지만 찾아보니 object를 담는데 타입이 지정되어 있지 않아 모든 object를 받을 수 있다고 문서에서 써 있음.

## 딕셔너리 액세스하기와 수정하기

```
var movieRatings = ["Domoe darko": 3, "Chungking Express": 5, "Dark City": 4]
let darkoRating: Int = movieRatings["Dark City"]!

print(darkoRating)          // 4
```

- 위의 소스를 보면 딕셔너리를 가져올때 "!"를 사용하여 unwrapping 작업을 해주는데 책에서 내용을 보면 값을 가져올때 이것이 값이 존재하는지 존재하지 않는지 알려 줄 필요가 있다고 설명하여 unwraaping을 통해 그것을 알려주는거 같음

## 값 추가하기와 제거하기

- 값을 추가 하기위해서는 키를 지정하고 넣어주면 된다.

```
var movieRatings = ["Domoe darko": 3, "Chungking Express": 5, "Dark City": 4]
movieRatings["The Cabinet of Dr. Caligari"] = 5

print(movieRatings["The Cabinet of Dr. Caligari"]!)     // 5
```

- 딕셔너리에서 값을 제거하는 방법은 removeValue(forKey:String) 을 사용하는데 이 방법 보다는 nil을 넣어주면 바로 삭제가 됨.

```
// removeValue를 사용
var movieRatings = ["Domoe darko": 3, "Chungking Express": 5, "Dark City": 4]
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings.removeValue(forKey: "Dark City")

print(movieRatings["Dark City"])            // nil
```

```
// nil을 넣어줌
var movieRatings = ["Domoe darko": 3, "Chungking Express": 5, "Dark City": 4]
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings["Dark City"] = nil

print(movieRatings["Dark City"])
```
