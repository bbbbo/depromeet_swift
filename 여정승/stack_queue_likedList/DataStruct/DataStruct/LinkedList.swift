//
//  LinkedList.swift
//  DataStruct
//
//  Created by Jung seoung Yeo on 2017. 10. 28..
//  Copyright © 2017년 Jung seoung Yeo. All rights reserved.
//

import Foundation

class Node {
    var value: Int?
    var next: Node?
    var prev: Node?
    
    init(value: Int?, next: Node?, prev: Node?) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}

func printList(head: Node?) {

    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var next: Node?
    var prev: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        
        currentNode = next
    }
    
    return nil
}

func removeAt (head: Node?) {
    let removeNode = head
    
    if removeNode?.prev == nil {
        removeNode?.next?.prev = nil
        removeNode?.next = nil
    } else if removeNode?.next == nil {
        removeNode?.prev?.next = nil
        removeNode?.prev = nil
    } else {
        removeNode?.next?.prev = removeNode?.prev
        removeNode?.prev?.next = removeNode?.next
    }
}

func frontAppend(newNode: Node?, originNode: Node?) {
    
    let head = originNode
    
    if head?.next == nil {
        head?.next = newNode
        newNode?.prev = head
    } else {
        newNode?.prev = originNode
        newNode?.next = originNode?.next
        originNode?.next?.prev = newNode
        originNode?.next = newNode

    }
}

func endAppend(newNode: Node?, originNode: Node?) {
    let tail = originNode
    
    if tail?.next == nil {
        tail?.prev = newNode
        newNode?.next = tail
    } else {
        newNode?.next = tail
        newNode?.prev = tail?.prev
        tail?.prev?.next = newNode
        tail?.prev = newNode
        
    }
}
