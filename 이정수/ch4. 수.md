### chapter 4 수

***정수***
+ 사물의 개수를 표현할때 사용
+ 정수는 일정한 메모리 공간을 차지
+ 최댓값 최소값이 존재

**code**
```swift
var str = "hellow, play ground"

print ("max int is \(Int.max)")
print ("min int is \(Int.min)")
```
**result**
```
max int is 9223372036854775807
min int is -9223372036854775808
```
mac os 에서 ```int```는 64비트 정수이다.
->2의64승 개의 수를 표현한다/

***정수 인트턴스 만들기***

정수는 항상 ```int```로 판단하지만 명시적으로 인스터스도 만들 수 있다.

***정수의 연산***
연산자 줄여쓰기
```swift
var x = 10
x += 10 //x = x + 10
```

***오버플로우와 언더플로우***

스위프트는 오류를 줄이기 위해서 
"반대쪽으로 돌리기"를 기본으로 하고 있다.
**code**
```swift
let y: Int8  = 120
let z = y &+ 10
print(z)
```
**result**
```-126```

결과처럼 초과되는 수 많큼 반대로 넘어간다.
120+10=130 max(127)초과
130->-126
 오버플로 연산자```&+```  언더플로 연산자```&-```
 
 ***부동소수점 수***
 ```Float```와```Double```
+ 32 bit 와 64 bit 로 나뉜다
+ double 이 정확한 근사값을 가진다

