//
//  Stack.swift
//  DataStructure
//
//  Created by Hyunsik Yoo on 27/10/2017.
//  Copyright © 2017 Hyunsik Yoo. All rights reserved.
//

import Foundation

class Stack{
    // 클래스 내부 변수를 배열로
    var elements : [Int?]

    // 생성자
    init() {
        elements = []
    }
    
    // top : 스택 최상단에 존재하는 아이템 반환
    func top() -> Int?{
        if let topElement = elements[elements.count-1]{
            return topElement
        }else{
            return nil
        }
    }
    
    // pop : 스택 최상단에 있는 아이템 삭제하고 반환
    func pop() -> Int?{
        if(!empty()){
            if let result = elements.remove(at: elements.count-1){
                return result
            }else{
                return nil
            }
        }
        else{
            return nil
        }
    }
    
    // push : 스택에 새로운 아이템 삽입
    func push(element: Int){
        elements.append(element)
    }
    
    // 스택이 비어있는지 확인
    func empty() -> Bool{
        if(elements.count == 0){
            return true
        }
        else{
            return false
        }
    }
}
