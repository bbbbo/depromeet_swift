#  Chapter 9 배열

* 스위프트의 Array는 어떤 종류의 값도 담을 수 있다
    * 요소들의 순서가 중요한 컬렉션
  ​

## 배열 만들기

* 배열 선언

```swift
var bucketList: Array<String> or
var bucketList: [String] = ["Climb"]	//배열 초기화
```





## 배열 엑세스하기와 수정하기

- append(_:)  

  - 어떤 타입이든 배열이 받는 타입을 인수로 받아 새 요소로 추가

  ~~~swift
  bucketList.append("Fly hot air ballon to Fiji")
  ~~~



* remove(at:) 

  * 배열에서 항목 지우기

    ~~~swift
    bucketList.remove(at: 1)
    ~~~



* 배열의 항목 세기

  * 배열이름.count

  * 배열이름[0…2]  //상위 세개 항목 찾기

    ​

* 새 정보 추가하기  

  * += 사용

    ​

* 삽입하기

  * insert(_:at:)

    ~~~swift
    bucketList.insert("~~~", at:2)	//(배열에 추가될 인스턴스, at: 새 요소로 추가할 위치의 인덱스)
    ~~~







## 배열의 등가

* == : 같은지 비교
  * 배열은 순서도 일치해야 한다





## 변경할 수 없는 배열

* let 키워드 사용
