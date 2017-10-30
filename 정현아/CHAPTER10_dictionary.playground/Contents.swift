//: Playground - noun: a place where people can play

import UIKit

var dict1: Dictionary<String, Double> = [:]
var dict2 =  Dictionary<String,Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()

var error = "The request failed:"
func appendErrorCode(_ code : Int, toErroSring errorString: inout String){
    if code == 400 {
        //swift는 기본적으로 인스턴스는 immutable 이다.
        //inout 처리를 해줌으로써 mutable이 되어 변경가능하다.
        errorString += " bad request."
    }
}

appendErrorCode(400, toErroSring:  &error)
error
