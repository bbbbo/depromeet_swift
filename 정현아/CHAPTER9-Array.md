---
title: CH9. Array
categories:
  - SWIFT candy
tags: [컬렉션, 배열]
---

# CHAPTER9 / Array

<br>
<br>

## 배열
- - -
스위프트의 컬렉션 타입중 하나로 **인덱스**라는 순서가 있는 값들의 컬렉션이다. OJC와 다르게 *객체든 비객체든 어떤 종류의 값*도 담을 수 있다.

### CODE

```swift
// 명시적 배열선언 -> 초기화를 해야 append 할 수 있다.
var list: [String]

// 타입추론으로 인해 dongBang Array가 String type으로 추론되었다.
var dongBang = ["최강창민","유노윤호","영웅재중"]
dongBang.append("믹키유천")  //요소 추가
dongBang.append("시아준수")
dongBang.remove(at: 2)    //해당 인덱스 요소 삭제

print(dongBang)   //출력 : ["최강창민", "유노윤호", "믹키유천", "시아준수"]
print(dongBang.count)   //배열의 크기 -> 출력 : 4
print(dongBang[0...2])  //범위적용  -> 출력 : ["최강창민", "유노윤호", "믹키유천"]
```

<br>

### CODE : A. 서브스크립트를 통한 요소값 변경

```swift
dongBang[3] = "박유천"

for i in 2...3 {
    dongBang[i] += "_jyj"
}

print(dongBang[3])    //출력 : 박유천_jyj
```

<br>

### CODE : B. insert 프로퍼티를 통한 요소값 변경

```swift
dongBang.insert("추가멤버", at: 4)

print(dongBang[4])    //출력 : 추가멤버
```
<br>

### CODE : 특정 요소를 포함하고 있는지 검사하는 method

```swift
// 해당 요소를 포함하고 있는지 검사하는 method
if dongBang.contains("최강창민") {
    print("exist")
} // 출력: exist
```

- 두 배열의 등가가 true로 성립하려면, 배열값뿐만 아니라 인덱스 값도 일치해야 한다.
- 변경할 수 없는 배열은 let 키워드를 통해 생성 가능하다.

<br>

- - -

### Quest1

```swift
// dongBang = ["최강창민", "유노윤호", "영웅재중", "믹키유천", "시아준수"]

for i in 0...dongBang.count % 2  {
    var num : Int = dongBang.count - (i+1)
    dongBang.swapAt(i, num)
}
    print(dongBang)

//출력 : ["시아준수", "믹키유천", "영웅재중", "유노윤호", "최강창민"]  
```

### Quest2

```swift
let whatIndex = dongBang.index(of: "영웅재중")
// "영웅재중"의 index는 optional(2)

if whatIndex != nil {
    // nil이 아닐경우 강제언랩핑해라
    print(dongBang[whatIndex!])
}

//출력 : 영웅재중
```

만약 찾는 요소가 배열에 없다면?

```swift
let whatIndex = dongBang.index(of: "현아공주")
// "영웅재중"의 index는 optional(2)

if let  whatIndex = whatIndex {
    print(dongbang[whatIndex])
}else {
    print("없는 텍스트입니다.")
}
// 출력 : 없는 택스트입니다.
```


[ # Swift - 공식 사이트 참조](https://developer.apple.com/documentation/swift/array)
