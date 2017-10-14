# Chapter3 - 조건

## if/else

조건의 true, false의 따라 실행 구분 지정 가능

```
var population : Int = 5422
var message : String

if population < 10000 {
    message = "\(population) is a small town!"          // true이면 실행
}else{
    message = "\(population) is pretty big!"            // 모든 if문이 실행되지 않으면 실행
}
print(message)      // output : 5422 is a small town!
```

비교 연산자 중 '==='은 두 인스턴의 비교하여 true지를 판단하고 '!=='은 false를 판단
 사용 용도가 궁금...........

```
let a = NSObject()          // 0x604000010cf0
let b = NSObject()          // 0x604000011210
let c = a                   // 0x604000010cf0

//false
if a === b {
print("true")
}else if a !== b {
print("false")
}

//true
if a === c {
print("true")
}else if a !== c {
print("false")
}
```

## 삼항 연산자

a ? b : c    a가 참이면 b 거짓이면 c

```
var population : Int = 5422
var message : String

message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"
```

