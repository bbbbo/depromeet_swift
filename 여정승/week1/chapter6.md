# Chapter6 - 루프 

## for문

- swift의 for문 다른 언어의 for문이라 조금 다른 것으로 보인다. swift에서는  "++" 연사자가 없기 때문에 다른 언어의 "for문 처럼 for(int i = 0; i < index.count; i++) ()"의 형태 구현이 불가능 함.
- swift에서는 'for - in' 형태로 반복의 횟수를 지정 할 수 있음
- 특이점으로는 for문의 원래 "int i = 0"으로 변수를 초기화 작업을 해주었는데 swift에서는 따로 let이나 var와 같이 사용 안해서 가능한것이 매력적임

```
var myFirstInt: Int = 0

for i in 1 ... 5{
    myFirstInt += 1
    myFirstInt
    print("myFirstint equals /(myfirstInt) at iteration \(i)")
}
```

- 위로 코드에서는 반복문 안에 i라는 값을 출력하지만 출력이 없이 특정 횟수만 지정 하고 싶은면 i 를 따로 선언 하지 않고 "_"를 사용하여 표현이 가능함

```
var myFirstInt: Int = 0

for _ in 1 ... 5{
    myFirstInt += 1
    myFirstInt
    print("loop")
}
```

### where

- for문에 반복을 하면서 특정 조건에 만족하면 실행을 하게 할 수 있는 특정 기능이 존재함. obj에서는 for문 안에서 다시 if문을 주어 코드의 줄 수가 길어지는 현상이 있었는데 반가운 기능인거 같음.

```
//
for i in 1 ... 100 where i % 3 == 0{
    print(i)
}
```

## while문

- while문은 다른 언어랑 다른 것은 없는 것으로 보여짐,
- siwft에는 'repeat - while' 루프가 존재하는데 이것은 'do - while' 문과 동일함

```
repeat{
    print("Fire blasters!")
} while i < 6
```
