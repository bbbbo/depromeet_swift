### chapter 1 시작하기

xcode 시작하기
+ 플레이그라운드에서 실행(오른쪽 사이드바에 실행결과 나타남)
+ 주석 //

string (type)

**code**
```swift
var str = "hello, palyground"
str += "!"
print(str)
```  
  대입연산자 +=

출력하기
```	
print(str)
```
    
 
 
 ***str 변수 사용***
  string은 타입의 하나이며 타입의 인스턴스이다
  
+ 예선과제
 string 타입의 새 인스턴스를 생성
```swift
let name = "jslee"
print(name)
```
  
  ### chapter 2 타입, 상수, 변수
  
  ***타입***
  
  변수->변하는 값 
  ``x=10 에서 오른쪽 항에 따라 x값이 지정``
  
  상수->변하지 않는 값
  ``x=10 에서 오른쪽 값이 10으로 지정``
  
 + type checking(타입 확인)
  변수에 엉뚱한 데이터 타입을 지정하지 않도록 하는 기능
  
 + type inference(타입추론)
  변수의 데이터 타입을 결정한다
  
+  type annotation(타입 어노테이션)
  
  
  
  ``str`` ``int``와 같이 구체적인 타입을 명시해야 한다
  
 -> 따라서 변수의 데이터 타입을 통일시켜 주어야함
  
  **code**
  ```swift	
    var numberofstoplights: int = 4
    numberofstoplight += 2
 ```   
  
  ***상수 변수***
  
  상수 선언
```swift
  let 시험점수: int = "100"
  print(시험점수)
```

  변수 선언
```swift
  var 시험점수: int = "20"
  print(시험점수)
  시험점수: int = "100"
  print(시험점수)
```
  + 예외적인 상황을 제외하고 변수 보다는 상수 사용을 지향하자

***문자열 삽입***


\()


문자열 삽입으로 값을 새 str 타입에 삽입하는것

   
