### chapter 3 조건

***if else***

+ 둘 중 하나인 상황에서 결과가 안쪽으로 실행되는 것

***비교연산자***

+ == 왼쪽의 수와 오른쪽 수가 서로 같은지 판단한다.
+ != 왼쪽의 수와 오른쪽의 수가 서로 같지 않은지 판단한다.
+ === 두 인스턴스가 같은 참조을 가르키고 있는지 판단한다.
+ !== 두 인스턴스가 같은 참조를 가르키지 않는지 판단한다.

  ```===는 같은 타입인지까지  판단한다```
  
**code**
```swift
var hight: Int  = 167
var message: String

if hight <= 173{
    message = "\(hight)는 평균보다 작다."
} else {
    message = "\(hight)는 평균보다 크다."
}

print(message)

```
**result**

```167는 평균보다 작다.```

***비교연산자***

+ && (and) 두 조건이 모두 true일때만 true
+ ||(or) 두 조건중 하나만 true여도 true
+ !(not) true->false, false->true

***중첩 if***
+ 경우의 수가 둘 이상일 때 사용
+ 기존 if/else 안에 else 블록에 if/else 삽입

**code**
```swift
var price: Int = 5500
var massage: String

if price = 4100 {
    massage = "(price)은 아메리카노 입니다."
} else {
    if price < 5500 {
        massage = "\(price)원은 nomal 매뉴입니다."
    } else {
        massage = "\(price)원은 special 메뉴입니다"
    }
}

print(massage)


```
**result**
```5500원은 special 메뉴입니다```

