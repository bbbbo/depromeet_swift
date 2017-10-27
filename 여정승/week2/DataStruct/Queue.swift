//
//  Queue.swift
//  DataStruct
//
//  Created by Jung seoung Yeo on 2017. 10. 28..
//  Copyright © 2017년 Jung seoung Yeo. All rights reserved.
//

import Foundation

public struct Queue<T> {
    private var queue = [T]()
    
    mutating func enqueue(_ value: T) {
        self.queue.append(value)
    }
    
    mutating func dequeue() -> T? {
        return (!empty() ? self.queue.remove(at: 0): nil)
    }
    
    mutating func empty() -> Bool {
        return queue.count == 0
    }
    
    var count : Int {
        return self.queue.count
    }
}
