# Chapter 4
## 수
## 정수 (whole number)
- 소수점이나 소수부가 없는 수
- 스위프트에선 64bit, max : 2^64-1, min : -2^64
- Int64, Int32, Int16등 여러 정수 타입이 존재.
- 부호없는 정수형(unsigned int)로 UInt도 존재한다.

### 오버플로 연산자
- 연산의 결과가 자료형의 범위보다 클 때, wrap around를 해주는 연산자.
- 오버플로 연산자 : &연산자
- &-시에는 언더플로가 일어난다.

### 다른 정수타입으로 전환
- 스위프트에선 묵시적으로 전환되지 안항 명시적으로 전환해야한다.
<pre>
<code>
let a: Int8 = 50
let b: Int 16 = 200
let c = a + Int16(b)
</code>
</pre>
- 상위 정수타입으로만 전환이 가능하다.

## 부동소수점수(floating-point number)
- 소수점이 있는 수
- 가수(mantissa)와 지수(exponent)로 나뉘어 저장
- 32bit : Float, 64bit : Double
- 부동소수점수의 추론 타입은 Double이다.
