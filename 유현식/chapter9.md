Chapter9 - 배열
================

- 배열은 순서 있는 값들의 컬렉션(collection)
- 스위프트에서는 다양한 컬렉션 타입이 제공된다.

## 배열 만들기
- 배열을 만들 수 있는 문법은 3가지가 존재
```swift
var bucketList: Array<String> // 가장 기본적으로 선언하는 배열
var bucketList: [String] # 대괄호가 Array를 의미
var bucketList= ["Climb Mt. Everest"] // 타입추론을 사용한 배열 초기화
```

## 배열 엑세스하기와 수정하기
- 배열에 아이템 추가하기 및 삭제하기
```swift
var bucketList = ["Climb Mt. Everest"]
bucketList.append("Fly hot air ballon to Fiji") // append를 사용해 추가
bucketList.remove(at: 0) // 0번째 인덱스 값 삭제
print(bucketList.count) // 배열의 길이 출력하기
print(bucketList[0...2]) // 배열의 일부분 슬라이딩하여 출력하기
```

- 기존의 배열에 새로운 배열 이어 붙이기
```swift
var bucketList = ["Climb Mt. Everest"]
var newItems = ["Fly hot air balloon to Fiji",
                "Watch the Lord of the Rings trilogy in one day",
                "Go on a walkabout",
                ...
                ]

# 반복문을 통해 이어붙이기
for item in newItems {
    bucketList.append(item)
}

# 혹은 더하기 연산자로 리팩토링
bucketList += newItems
```


- insert 함수로 특정 위치에 삽입시키기
```swift
bucketList.insert("Toboggan across Alaska", at: 2)
```


## 배열의 등가
- 배열이 같은지 다른지 확인하기 위하여 **=** 연잔사를 사용한다.
- 같으면 true, 다르면 false로 설정
- 배열에서는 순서가 존재하므로 순서가 다르다면 false가 반환된다.
```swift
var bucketList = ["a", "b", ....]
var myronsList = ["a", "c", ....]

let equal = (bucketList == myronsList)
```

## 변경할 수 없는 배열
```swift
let lunches = ["a", "b", "c", ...]
```

## 문서
- Swift와 관련된 Reference는 Help -> Documentation and API Reference 메뉴에\
포함되어 있다.
- 이 기능은 효율적인듯!


