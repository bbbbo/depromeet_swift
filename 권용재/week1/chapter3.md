## Chapter 3 *#조건*

**if/else**

```swift
var population: Int = 3000
var message: String

if population < 5000 {
  message = "\(population) is a small town."
} else {
    message = "\(population) is a big town."
}
print(message)
```

**삼항 연산자**

기본적인 구조는  `a ? b : c`와 같은 형태로 이루어져 있습니다. 사실 실제 코드에서 사용해본 적이 1도 없습니다. 위 코드를 삼항 연산자로 바꿔서 작성해보겠습니다.

```swift
var population: Int = 3000
var message: String

message = population < 5000 ? "\(population) is a small town" : "\(population) is a big town."
```

5줄 짜리 코드를 한 줄로 바꾼다는 장점이 있지만 제가 보기엔 가독성도 떨어지고 익숙하지 않아서… 응 안 써..

