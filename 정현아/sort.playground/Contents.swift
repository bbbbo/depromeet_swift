//: Playground - noun: a place where people can play

import UIKit

//var arr  = [10,4,5,6,8,1,2]
//
////selection sort
//for i in 0...arr.count-2 {
//    var minIndex = i
//    for j in i+1...arr.count-1 {
//        if arr[minIndex] > arr[j] {
//            minIndex = j
//        }
//    }
//    arr.swapAt(i, minIndex)
//}
//
//print(arr)


//insertion sort
for i in 1...arr.count-1 {
    var minValue = arr[i]

    var j = i-1
    while j >= 0 && minValue < arr[j] {
        arr[j+1] = arr[j]
        j -= 1
    }
     arr[j+1] = minValue
}
print(arr)


//bubble sort
for i in 0...arr.count-2 {
    for j in 1...arr.count-1-i {
        if arr[j-1] > arr[j]{
            arr.swapAt(j-1, j)
        }
    }
}
print(arr)
