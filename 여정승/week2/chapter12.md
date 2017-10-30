# Chapter12 - 함수

- swift에서 함수는 특별한 것은 매개 변수와 리턴 지정인 거 같음.

```
func printPlayground(first interger1 : Int, second interger2 : Int){
    print("\(interger1) + \(interger2) = \(interger1 + interger2)")
}

printPlayground(first: 1, second: 2)      // 1 + 2 = 3
```

- 위의 함수 호출할때 특정한 이름으로 지정하여 사용 할 수 있다. 하지만 실제로 어떻게 효율이 있는지는 확인이 필요한거 같다. 처음부터 변수를 특정 알기 쉬운 이름으로 하는거랑 무슨 차이가 있는지 이해가 안됌.

```
func multipleReturn() -> (Int , Int) {
    return (1, 1)
}

print(multipleReturn())
```

- 위 다중 리턴은 매우 유연한 장점이 있어 보인다. 원래 값을 하나 씩 처리 하여 사용하는 방식에서 두개 이상의 인자를 받고 각각을 처리 후 다중 리턴으로 각 값을 리턴 하는 방식으로 처리도 가능 할 거 같음.

## 함수에서 중도에 빠져나오기

- guard 구문을 사용하면 if 처럼 특정 조건을 검사하여 함수 도중 나오것이 가능함.

```
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {

    guard let middleName = name.middle else {
        print("name.middle is nil")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Matt", nil, "Matias"))        // name.middle is nil
greetByMiddleName(fromFullName: ("Matt", "Danger", "Matias"))   // Hey Danger
```
