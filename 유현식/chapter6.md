Chapter6 - 루프
==============

## for-in 루프
- Python과 동일

```swift
var myFirstInt: Int = 0

for i in 1...5{
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}
```

- 1...5까지 이터레이터가 동작하면서 하나씩 조회
- 이터레이터를 \_(Wild Card)로 대신하면 이터레이터를 조회하지 않는다.

```swift
for _ in 1...5{
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}
```

- 반복만 5번 하고 와일드 카드로 인해 이터레이터 인덱스를 조회하지 않는다.

## where
- 루프에서도 where를 지원한다.
- 만족하는 조건에서만 루프가 동작

```swift
for i in 1...100 where i % 3 == 0 {
    print(i) // 3의 배수만 출력
}
```


## while 루프

```swift
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}
```


