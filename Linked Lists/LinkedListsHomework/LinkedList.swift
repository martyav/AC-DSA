//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var val: T!
    var next: Node?
}

class LinkedList<T: Equatable> {
    var head  = Node<T>()
    func printAllVals() {
        var current = head
        
        while current.val != nil {
            print(current.val)
            current = current.next!
        }
    }
    
    var count: Int {
        if head.val == nil {
            return 0
        } else {
            var countSoFar = 0
            var current = head
            
            while current.val != nil {
                countSoFar += 1
                current = current.next!
            }
            return countSoFar
        }
    }
    
    func append(_ element: T) {
        var current = head
        if head.val == nil {
            head.val = element
        } else {
            current.val != nil {
                current = current.next!
            }
            
            let newNode = Node<T>()
            current.next = newNode
            newNode.val = element
        }
    }
    
    func getElement(at Index: Int) -> Node<T>? {return nil}
    
    func insert(_ key: T, at index: Int) {}
    
    func contains(element targetKey: T) -> Bool {return false}
    
    func remove(at index: Int) {}
}


