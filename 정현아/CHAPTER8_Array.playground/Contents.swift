//: Playground - noun: a place where people can play

import UIKit

//명시적 배열선언 :: 초기화를 해야 append 할 수 있다.
var list: [String]

//타입추론으로 인해 dongBang Array가 String type으로 추론되었다.
var dongBang = ["최강창민","유노윤호","영웅재중"]
dongBang.append("믹키유천")
dongBang.append("시아준수")
//dongBang.remove(at: 2)

//print(dongBang)
//print(dongBang.count)
//print(dongBang[0...2])
//
//dongBang[3] = "박유천"
//for i in 2...3 {
//    dongBang[i] += "_jyj"
//}
//
//print(dongBang[3])

//// 해당 요소를 포함하고 있는지 검사하는 method
//if dongBang.contains("최강창민") {
//    print("exist")
//}

//// 예선문제
//for i in 0...dongBang.count % 2  {
//    var num : Int = dongBang.count - (i+1)
//    dongBang.swapAt(i, num)
//}
//    print(dongBang)

//예선문제 2
let whatIndex = dongBang.index(of: "현아공주")
// "영웅재중"의 index는 optional(2)

if whatIndex != nil {
    // nil이 아닐경우 강제언랩핑해라
    print(dongBang[whatIndex!])
} else {
    print("없는 텍스트입니다.")
}


