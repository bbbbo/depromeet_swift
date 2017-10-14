# Chapter 6
## 루프
- 일련의 코드 집합을 정의된 조건이 충족될 때까지 반복적으로 실행한다.
- for 루프 / while 루프

## for-in 루프
- for i in 1...5
- i : 이터레이터
- 1...5 구간만큼 반복되며, 이 구간의 값이 대입된다.


### where
- for-in 루프에 조건을 추가할 때 사용한다.
- where이 충족되지 않으면 루프의 코드는 실행되지 않는다.
ex)
<pre>
<code>
for i in 1...100 where i%3==0{
    print(i)
}
</code>
</pre>

## while 루프
- 조건이 참인 동안만 코드를 실행하는 루프.
- 반복 횟수가 구체적이지 않은 상황에 최적이다.

## repeat-while 루프
- 다른 언어의 do-while 루프와 같다.

## 제어건 전달문
- 5장에서 사용된 break, fallthrough외에 continue라는 제어문도 전달.
- 현재 루프를 넘기고 루프를 다시 시작한다.
