Ch08 옵셔널
----------

* 옵셔널 타입
* 옵셔널 바인딩
* 암묵적으로 언래핑된 옵셔널
* 옵셔널 체이닝
* 옵셔널을 준비된 상태로 수정하기
* nil 결합 연산자

#### 주요 개념

* 옵셔널(Optional)
    * 값이 없을 수도 있는 (**nil**) 타입
    * 강제 언래핑(forced unwrapping)
        * '!' 을 옵셔널 타입의 변수 앞에 붙이면 해당 변수의 값에 강제로 엑세스할 수 있다
        * 해당 변수의 값이 nil이면 런타임에 무단 종료된다
    * 암묵적 언래핑(implicitly unwrapped)
        * 옵셔널 변수 뒤에 '?' 대신 '!'을 붙여 선언
        * 특별한 경우에만 사용하도록 제한을 둘 필요가 있음 (클래스 초기화 등)
  
* 옵셔널 바인딩(optional binding)
    * 조건문을 통해 안전하게 옵셔널 변수의 값에 접근할 수 있다.
    * 조건문에서 임시로 사용하기 위한 상수를 만들어 처리
    * nil 결합 연산자 (nil coalescing operator)
        * a ?? b
            * a는 옵셔널 타입
                * a의 값이 nil이면 b가 리턴
  
* 옵셔널 체이닝(optional chaining)
    * 체인에서 어떤 옵셔널이 nil이면 체인 자체가 nil을 리턴
    * 옵셔널을 준비된 상태(in place)로 수정
  
#### 참고 자료

> [옵셔널 관련 자료](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309)  
> [옵셔널 체이닝 관련 자료](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html#//apple_ref/doc/uid/TP40014097-CH21-ID245)  

