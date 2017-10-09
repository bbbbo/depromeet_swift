## Chapter 6 *#루프*

이번 장에서는 for문과 while문에 대해 다루고 있습니다.

```swift
// for statement

var num: Int = 0

for i in 1...5 {
  num += 1
  print(num)
}
// 1 2 3 4 5가 순차적으로 출력됩니다.
```

다소 어색한 for - in을 사용해서 for문을 사용할 수 있습니다. 

```swift
for i in 1...100 where i % 3 == 0 {
  print(i)
}
// 1부터 100사이의 3의 배수가 출력됩니다.
```

where를 사용해서 위와 같이 사용할 수 도 있습니다. 



```swift
// while statement

var num: Int = 0;
var i = 1;

while i < 6 {
  num += 1
  print(num)
  i += 1
} 
// 1 2 3 4 5가 순차적으로 출력됩니다.
```

가장 기본적인 while문 입니다. 

```swift
// repeat while

repeat {
  print("Fire!!!")
} while shields > 0
```

다른 언어에서는 do-while이라고 불리는 것을 swift는에선 repeat-while이라고 부릅니다.



```swift
// 본선 문제 : Fizz Buzz 

var nums: Int = 0

for _ in 1...100 {
    nums += 1
    if nums % 3 == 0 && nums % 5 == 0 {
        print("Fizz Buzz")
    } else if nums % 3 == 0 {
        print("Fizz")
    } else if nums % 5 == 0 {
        print("Buzz")
    } else {
        print(nums)
    }
}
```

