# Chapter 6 루프


## for-in 루프
```swift
for i in 시작...마지막 {
        ...
}
```


* 이터레이터(iteratior) : 루프의 현재 반복 횟수를 나타낸다.
    * 명시적으로 선언하지 않고 와일드카드(_)를 사용해도 된다.
* ... : 구간 지정






#### where
```swift
for i in 1...100 where i % 3 == 0 {
        print(i)
}

//같은 코드
for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}
```






## while 루프

* 조건이 참인 동안만 루프 안에 든 코드를 실행한다.
```swift
while i < 6 {
    ...
}
```






## repeat-while 루프

* do-while 루프 - 적어도 한 번 실행
```swift
repeat {
    // 발사
    print("Fire blasters!")
} while shields > 0
```





## 제어권 전달문

* 실행이 루프의 처음으로 돌아가 반복될지 아니면 루프에서 벗아날지 제어할 수 있다.
   * continue
   * break

