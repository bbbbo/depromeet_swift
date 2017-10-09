## Chapter 7 *#문자열*

```swift
// character 뽑아내기

let string = "Hello, World!"

for c: Character in string.characters {
    print("'\(c)'")
}
// 'H' 'e' 'l' 'l' 'o' ',' ' ' 'W' 'o' 'r' 'l' 'd' '!'가 차례로 출력된다.

/*
for character in string.characters {
    print("'\(character)'")
}
이렇게 해도 같은 결과를 출력한다.
*/

```

위와 같은 코드로 문자열의 문자 하나하나 다 뽑아낼 수 있다.



```swift
let string = "Hello, World!"

for scalar in string.unicodeScalars {
  print("\(scalar.value)")
}
// 72 101 108 108 111 44 32 87 111 114 108 100가 차례로 출력된다.
```

여기서 의미하는 숫자는 유니코드에서의 위치다. 예를들어, 유니코드 72번은 'H'이다.



```swift
// 인덱스로 문자 찾기

let string = "Hello, World!"
let start = string.startIndex
let end = string.index(start, offsetBy: 4)
let fifthCharacter = string[end]
print(fifthCharacter) // o

// 구간 뽑아내기

let range = start...end
let rangeString = string[range]
print(rangeString) // Hello
```

