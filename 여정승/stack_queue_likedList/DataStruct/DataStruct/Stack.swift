//
//  Stack.swift
//  DataStruct
//
//  Created by Jung seoung Yeo on 2017. 10. 28..
//  Copyright © 2017년 Jung seoung Yeo. All rights reserved.
//

import Foundation
public struct Stack<T> {

    private var stack = [T]()
    
    mutating func push(_ value : T) {
        self.stack.append(value)
    }
    
    mutating func pop() -> T? {
        return (!empty() ? self.stack.remove(at: count - 1) : nil)
    }
    
    mutating func empty() -> Bool {
        return stack.count == 0
    }
    
    var count : Int {
        return self.stack.count
    }
}
