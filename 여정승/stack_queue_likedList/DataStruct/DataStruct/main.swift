//
//  main.swift
//  DataStruct
//
//  Created by Jung seoung Yeo on 2017. 10. 28..
//  Copyright © 2017년 Jung seoung Yeo. All rights reserved.
//

import Foundation

var stack = Stack<Any>()
var queue = Queue<Any>()

let threeNode = Node(value: 3, next: nil, prev: nil)
let twoNode = Node(value: 2, next: threeNode, prev: nil)
let oneNode = Node(value: 1, next: twoNode, prev: nil)
twoNode.prev = oneNode
threeNode.prev = twoNode
//nil <- 1 <-> 2 <-> 3 -> nil

let newNode = Node(value: 4, next: nil, prev: nil)
frontAppend(newNode: newNode, originNode: threeNode)      // 1 <-> 2 <-> 3 <-> 4

let newNode2 = Node(value: 0, next: nil, prev: nil)
endAppend(newNode: newNode2, originNode: oneNode)         // 0 <-> 1 <-> 2 <-> 3 <-> 4

removeAt(head: newNode)                 // 0 <-> 1 <-> 2 <-> 3
removeAt(head: twoNode)                 // 0 <-> 1 <-> 3
