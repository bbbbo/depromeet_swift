Chapter10 - 딕셔너리
================

- 순서를 중요시하는 배열과는 다르게 순서가 중요하지 않은 타입이다.
- 키(key), 값(value)로 구성되어있고 HashMap으로 생각하면 편하다.

## 딕셔너리 만들기
- 딕셔너리를 만드는 문법 구조 **var dict: Dictionary<Key, Value>** 이다.
- Dictionary 타입의 키는 반드시 해시 가능해야한다.
- 키값으로는 String, Int, Float, Double, Bool
```swift
var dict1: Dictionary<String, Double> = [:]
var dict2: Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4: [String:Double]()
```

## 딕셔너리에 내용물 넣기
```swift
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5]
```

## 딕셔너리 액세스하기와 수정하기
```swift
var movieRatings = ["Donnie Darko": 4, "Chungking Expree": 5]
print("I have rated \(movieRatings.count) movies.") // 딕셔너리의 길이
let darkoRating = movieRatings["Donnie Darko"]
```


- 값 수정하기
> - 수정하는 방법은 인덱싱으로 직접 접근하는 방법과 updateValue로 수정한다.
> - updateValue(\_:forkey:) 메서드는 옵셔널을 리턴한다.
> - 따라서 메서드 리턴 값은 예상 타입의 옵셔널에 대입하고, 해당 키의 이전값에 액세스할 때는 옵셔널 바인딩을 사용하는 것이 좋다.
```swift
var movieRatings = ["Donnie Darko":4 ,...]
movieRatings["Dark City"] = 5 // 인덱싱으로 수정
var movieRatings = ["Donnie Darko":4 ,...]

// movieRatings 딕셔너리에 c를 키로하는 값을 5로 변경
// c를 키로하는 값이 없다면 nil반환
// c를 키로하는 값이 존재한다면 수정 전 값을 반환
// 따라서 옵셔널 타입으로 지정
let oldRaintg: Int? = movieRatings.updateValue(5, forKey: "c")

// lastRating과 currentRating 모두 값이 존재한다면 조건문을 실행
if let lastRating = oldRaintg, let currentRating = movieRatings["c"]{
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
```

## 값 추가하기와 제거하기
- 값을 추가할때는 인덱싱으로 접근하여 추가
- 값을 제거할때는 removeValue함수 사용

```swift
var movieRatings = ["Donnie Darko": 4, ...]
movieRatings["The Cabinet of Dr. Caligari"] = 5 // 값 추가
movieRatings.removeValue(forKey: "Dark City")

// 아래와 같이 입력해도 됌.
// 입력 값을 키로하는 값이 없다면 nil반환
let removeRating: Int? = movieRatings.removeValue(forKey: "Dark City")

// 혹은 인덱싱하여 nil로 삭제 가능
movieRatings["Dark City"] = nil
```

## 루프 적용하기
- for ~ in 루프를 딕셔너리에 적용시킬 수 있다.
```swift
var movieRatings = ["Donnie Darko": 4, ...]

// key, value 튜플로 이터레이팅
for (key, value) in movieRatings{
    print("The movie \(key) was rated \(value).")
}

// key값만 이터레이팅
for movie in movieRatings.keys {
    print("User has rated \(movie).")
}
```

## 변경할 수 없는 딕셔너리
- let키워드를 사용
```swift
let album = ["Diet Roast Beef": 268, ...]
```

## 딕셔너리를 배열로 변환하기
```swift
var movieRatings = ["Donnie Darko": 4, ...]
let watchedMovies = Array(movieRatings.keys)
```
