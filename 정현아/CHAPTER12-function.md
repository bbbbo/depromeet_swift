---
title: CH12. Function
categories:
  - SWIFT candy
tags: [함수]
---

# CHAPTER12 / Function

<br>
<br>

## 함수
- - -
- 구체적인 어떤 <U>task를 수행하는 **코드 집합**</U>이다.
- 파라미터는 함수 안에서 반드시 사용되어야 한다.
- 파라미터에 이름을 사용할 경우, 외부에서 호출 되었을때 *이름을 반드시 참조*해야 한다.


- **인수(argument)** : 함수가 호출되었을 때 사용되는 일련의 값 자체.
- **파라미터(parameter)** : 함수를 정의할 때(함수의 입장), 외부로 부터 받아들이는 값.  
-> *함수에서 **argument**가 **parameter**로써 대입되었다.*

<br>

### 파라미터
- - -
- 파라미터는 **외부 파라미터(extenal parameter)**, **내부 파라미터(inner parameter) 두가지가 있다. 둘다 함께 사용 가능하며 생략도 가능하다.
- 외부 파라미터는 함수를 호출시 이떤 인수를 넣어야 할지 가독성을 높이기 위해서 사용되며, 내부 파라미터는 함수 내부에서 사용될 때 가독성을 높이기 위해 사용된다.

<br>


#### CODE
```swift
func sendService (name: String, ea: Int) {
    print("\(name)에게 딸기를 \(ea)개 보낸다.")
}

sendService(name: "현아공주", ea: 3)


//external parameter를 사용할 경우
func sendService (to name: String, _ ea: Int) {
    print("\(name)에게 딸기를 \(ea)개 보낸다.")
}

sendService(to: "현아공주", 4)

//출력 : 현아공주에게 딸기를 4개 보낸다.

```

<br>

### 가변 파라미터
- - -
- 인수에 해당하는 값을 하나도 전달받지 않을 수도 있고, 여러 개를 받을 수도 있다.
- 인수로 전달받은 값들은 함수 안에서 **배열의 형태**로 사용된다.
- 함수는 단 *하나의 가변 파라미터*만을 갖는다. 순서상 가장 마지막 파라미터 자리에 온다.
- `파라미터이름 : String...` 형식으로 표현한다.

<br>

#### CODE
```swift
func sendService (name: String... , ea: Int) {
    for names in name {
        print("\(names)에게 딸기를 \(ea)개 보낸다.")
    }
}

sendService(name: "현아","화투","병운","재석", ea: 7)

//출력:
현아에게 딸기를 7개 보낸다.
화투에게 딸기를 7개 보낸다.
병운에게 딸기를 7개 보낸다.
재석에게 딸기를 7개 보낸다.
```

<br>

### 파라미터의 기본값
- - -
파라미터에는 기본값을 지정할 수 있다. 함수를 호출할 때 *인수를 생략*해도 된다. (따라서 입력된 인수가 없으면 설정한 default값으로 설정한다.)  
`ea: Int=10` 와 같이 기본값을 설정 가능하다.

<br>

#### CODE
```swift
func sendService (name: String, ea: Int=10) {
        print("\(name)에게 딸기를 \(ea)개 보낸다.")
}

sendService(name: "현아공주님")

//출력 : 현아공주님에게 딸기를 10개 보낸다.
```

<br>

### 인아웃 파라미터
- - -
함수 밖에서 변수의 통제권을 발휘하기 위해 쓰인다.  
다만 두가지 유의점이 있다.
1. 가변 파라미터에는 inout을 적용할 수 없다.
2. inout 파라미터는 기본값을 가질 수 없다.

`파라미터이름: inout String` 의 형식으로 사용한다.
호출된 후 인자 앞에는 `&(엠퍼샌드)`가 붙어야한다.

<br>

#### CODE
```swift
func sendService (name: String, soldOut: inout String) {
        soldOut += "매진"
        print("\(name)님, \(soldOut) 되었습니다.")    
}

var food = "마카롱"
sendService(name: "현아공주", soldOut: &food)

//출력 : 현아공주님, 마카롱매진 되었습니다.
```

  만약 **인아웃 파라미터**를 사용하지 않으면 immutable 값이라 변경불가능하다고 컴파일 에러가 뜬다.


<br>

### return값 지정하기
- - -
- return type은 파라미터 옆에 `-> String` 과 같이 나타내고, return 값은 함수 내부에서 정의한다.
- 복수 리턴값이 가능하며 `-> (파라미터이름1:[type] ,파라미터이름2: [type])` 와 같이 표현 가능하다.
- 복수 리턴값은 **튜플**의 형태로 저장된다.

<br>

#### CODE
```swift
func sendService (name: String, ea: Int, soldOut:  String) -> Int {

        print("\(name)님, \(soldOut) 매진 되었습니다.")
        return ea
}

var result = sendService(name: "현아공주", ea: 10, soldOut: "마카롱")

print(result)

//출력: 현아공주님, 마카롱 매진 되었습니다. / 10
// return 값이 있기 때문에, 변수에 담아서 사용해야 한다.
```

<br>

### 함수의 중첩
- - -
함수 내부에 또다른 메소드를 정의 가능하다. 그 메소드는 함수 내부에 변수와 인스턴스를 공유가능하다. 함수의 `{}` 시야안에 포함되기 때문이다.


<br>


### Guard : 함수에서 중도에 빠져나오기
- - -
- 어떤 조건이 만족되지 않았을 때 함수 실행 도중에 빠져나오기 위해 사용한다.
- 부적절한 조건일 때 코드가 실행되지 않도록 보호하는 임무를 받은 것이다.
- `if let`처럼 쓰인다고 생각하면 된다.

<br>

#### CODE
```swift
func sayHello (fullName : (first:String, second: String?, third:String))  {

    guard let secondName = fullName.second else {
        print("외자 이름")
        return
    }
        print("\(secondName)")
}

sayHello(fullName: ("정","현","아"))
//출력 : 현

```
