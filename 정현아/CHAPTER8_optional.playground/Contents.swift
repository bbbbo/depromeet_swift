//: Playground - noun: a place where people can play

import UIKit
var yesOrNoString: String?
yesOrNoString = "옵셔널"

//if yesOrNoString != nil {
//    let String = yesOrNoString!
//    print(String)
//} else {
//    print("run-time error")
//}

var box : String? = "고양이"
if let object  = box {
    print("\(object)가 들어있다")
}else {
    print("nil이다")
}

