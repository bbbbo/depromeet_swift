# CHAPTER5 / SWITCH

<br>
<br>

## Switch 기본문법
- - -
if/else는 조건을 boolean값으로만 판단했다면,
switch는 특정 값에 따라 **경우의 수**를 나눠 판단한다.

### CODE
```swift

var message: String
var food:String = "beef"

switch food {
case "vagitable","fruit":
    message = "야채"
    // 해당값에 따른 코드 실행
case "beef":
    message = "소고기"
    fallthrough
default:
    message = "기타등등"
}

print(food)     //출력 : beef
```

* 마지막 줄의 ``default``는 ***반드시 삽입해 주어야 한다***.  왜냐하면 실행할 수 있는 구문이 적어도 하나는 존재하여야 하기 때문이다.

* case에 여러가지 조건을 콤마로 나열할 수 있다.
  - ``case 300...307: ``과 같이 구간으로 설정할 수도 있다.
  - **구간 대조 문법**은 앞뒤 숫자를 포함하여 그 사이의 모든 값까지 나타내는 범위다.

* ``fallthrough``라는 *제어권 전달문*을 사용할 수 있다.
  - ``fallthrough``는 현재 case가 가지고 있는 제어권을 바로 아래(다음)case로 '전달하라'고 switch에 알린다.
  - 기존 OJC의 switch문과 다르게 break 없이 만족하는 case를 만나면 자동으로 실행을 멈춘다. 따라서 다음 case로 통과 시키고 싶다면 ``fallthrough``를 쓴다.

<br>

## 값 바인딩
- - -
### CODE
```swift

var message: String
var food:String = "soil"

switch food {
case "vagitable":
    message = "야채"
    // 해당값에 따른 코드 실행
case "beef":
    message = "소고기"
    // 해당값에 따른 코드 실행
case let unkownFood:
    message = "\(unkownFood) 는 존재하지 않는 음식입니다."
default:
    message = "음식아님"
}

print(message)     //출력 : soil 는 존재하지 않는 음식입니다.
```
아랫줄에 ``let unkownFood:``와 같이 조건절에 변수를 선언하여 실행절에서 대조되는 기준값을 변수에 **묶을(bind)** 수 있다. 단, 변수는 해당 case안에서만 사용가능 하다.


그러나 위와 같은 방법도 있으나, default 실행절에서 대조되는 값의 변수명(ex,food)을 ``\(food)`` 로 바인딩하여 위 구문을 대체할 수 있다.


<br>

## WHERE
- - -
조건절에 where을 이용하여 조건절을 쓸 수 있다
### CODE
```swift

var message: String
var food:String = "candy"

switch food {
case "vagitable":
    message = "야채"
    // 해당값에 따른 코드 실행
case "beef":
    message = "소고기"
    // 해당값에 따른 코드 실행
case let unkownFood where unkownFood == "candy" || unkownFood == "coffee":
    message = "\(unkownFood) 는 존재하지 않는 음식입니다."
default:
    message = "음식아님"
}

print(message)     //출력 : candy 는 존재하지 않는 음식입니다.
```

<br>

## 튜플과 패턴 대조
- - -
* **튜플**은 논리적 *연관성이 있는 둘 이상의 값*을 한데 묶은 일종의 유한 집합이다. 리턴값은 순서 리스트의 구조를 갖는다.
* 논리적 연관성을 드러내기 위해 사용한다.
* 튜플 요소에 이름을 붙일 수 있다.

### CODE
```swift

var message: String
var food:String = "candy"
var foodNumber:Int = 3
let foodType = (type:food, number: foodNumber)          //튜플

switch foodType {
case ("vagitable",_),("fruit",_):
    message = "야채"
    // 해당값에 따른 코드 실행
case ("beef",2):
    message = "소고기"
    // 해당값에 따른 코드 실행
default:
    message = "음식아님"
}

print(foodType.number)     //출력 : 3
```
위와 같이 튜플의 값에 ``foodType.number``와 같이 *[튜플변수명.요소이름]* 으로 접근하며,
(_)는 빈칸의 뜻으로 *아무 값이 와도 상관없다*는 와일드카드다.


<br>

## if-case 문
- - -
* if문의 조건절에 패턴대조를 사용한다.
* 조건절에 콤마로 구분하여 한개 이상의 조건을 넣을 수 있다.
* swtich문의 default를 쓰지 않아도 되며, if문처럼 한가지 조건만 다루지 않아도 된다.

### CODE

```swift
if case 2...10 = foodNumber, foodNumber < 5   {
    print("suitable !!")
}
//출력 : suitable !!
```
