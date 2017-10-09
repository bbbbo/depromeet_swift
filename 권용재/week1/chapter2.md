## Chapter 2 *#타입, 상수, 변수*

**타입**

```swift
var num1 = "Four"
var num2: Int = 4
num1 += 2 // error : Binary operator '+=' cannot be applied to operands of type 'String' and 'Int'
num2 += 2 // num2 = 6
```

추가적으로 변수나 상수를 선언할 때, 어떤 데이터 타입인지 작성해주면 값을 선언하지 않아도 나중에 사용할 수 있습니다.

```Swift
var str1 // error
var str2: String
str2 = "Apple"
```



**상수 & 변수**

상수는 값을 선언하면 다시 그 값을 바꿀 수 없습니다. `let`을 이용해서 선언합니다.

변수는 값을 선언한 뒤 다시 그 값을 바꿀 수 있습니다. `var`를 이용해서 선언합니다.

```swift
// 상수
let name = "Yongjai"
print(name) // Yongjai
name = "용자이" // error

// 변수
var name = "Yongjai"
print(name) // Yongjai
name = "용자이"
print(name) // 용자이
```

 덧붙이자면 예외적인 상황을 제외하고 변수를 사용하기보단 상수 사용을 지향해야 합니다. 이유는 간단합니다. 상수로 선언을 해야 다른 사람이 코드를 읽을 때, 값의 변화에 신경 쓸 필요가 없다는 것을 알게 해줍니다. 또한 값에 의미를 부여해야 할 때 상수로 선언을 해주면 직관적으로 편합니다. 즉, 가독성 측면에서 상수를 사용하는 습관을 들이는 것이 좋습니다.

