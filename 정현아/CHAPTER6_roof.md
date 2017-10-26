# CHAPTER6 / ROOF

<br>
<br>

## for 루프
- - -
* for 루프는 인스턴스의 특정 요소들을 반복 처리해야 하는 상황에서 *반복 횟수*를 알수 있을 때 이상적으로 사용할 수 있다.
* 루프의 현재 반복 횟수를 나타내는 iterator는 루프안에서만 존재한다.
이터레이터 값은 루프에 제공된 구간의 첫번째 값이다.
* i대신 _(와일드카드)를 사용할 수 있다.
* **where**를 사용하여 조건에 만족할 때만 루프코드가 실행되도록 할 수 있다.


### CODE
```swift
var inning:Int = 0

for i in 1...5 where i % 2 == 0{
    inning += 1
    inning
    print(inning)
}
//출력: 1 2
```

<br>

## while 루프
- - -
* 어떤 조건이 충족될 때까지 반복 처리한다.
* 이터레이터를 초기화하고 , 조건을 판단하며, 조건이 유효할때 코드를 실행한다.
* 조건을 잘 설정하여 *무한루프*에 빠지지 않도록 주의한다.

### CODE
```swift
var i = 1
while i < 6 {
    inning += 1
    print(inning)
    i += 1
}
```

<br>

## repeat-while 루프
- - -
* 타 언어의 **do-while** 문과 흡사하다.
* 적어도 **한 번 실행**하고 조건을 판단한다.

### CODE
```swift
repeat {
    print("일어나")
} while inning > 0
```
<br>
## 제어권 전달문
- - -
* 루프에서는 ``countinue`` 를 통해 다음 조건문으로 제어권을 전달한다.
* ``break``를 통해서 제어문을 벗어날 수 있다.
