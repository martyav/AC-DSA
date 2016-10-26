//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T: Equatable> {
    var head  = Node<T>()
    
    func printAllkeys() {
        var current: Node? = head
        
        while current != nil {
            print(current?.key)
            current = current?.next
        }
    }
    
    var count: Int {
        var current:Node? = head
        
        var countSoFar = 0
            
        while current != nil {
            countSoFar += 1
            current = current?.next!
        }
        return countSoFar
    }

    
    func append(_ element: T) {
        var current = head
        if head.key == nil {
            head.key = element
        } else {
            while current.key != nil {
                current = current.next!
            }
            
            let newNode = Node<T>()
            current.next = newNode
            newNode.key = element
        }
    }
    
    func getElement(at index: Int) -> Node<T>? {
        var current: Node<T>
        
        if index > self.count - 1 || index < 0 || head.key == nil {
            return nil
        } else {
            var countSoFar = 0
            current = head
            
        while countSoFar != index {
                countSoFar += 1
                current = current.next!
            }
        }
        
        return current
    }

    
    func insert(_ key: T, at index: Int) {
        var current: Node<T>
        
        if index > self.count - 1 || index < 0 || head.key == nil {
            append(key)
        } else {
            var countSoFar = 0
            current = head
            
            while countSoFar != index - 1 {
                countSoFar += 1
                current = current.next!
            }
            let newNode = Node<T>()
            newNode.key = key
            current.next = newNode
        }
    }
    
    func contains(element targetKey: T) -> Bool {return false}
    
    func remove(at index: Int) {}//Hint: set the key and next to nil to remove it

    func reverse() {
        var prev: Node<T>? = nil
        var current: Node<T>? = head
        
        while current != nil {
            let temp = current!.next //track the one the node is pointing to at the start of the interation
            
            current!.next = prev //make the pointer turn around and point to the value we have in previous. for example, at the head, this means the node will point to nil instead of the second node
            prev = current //now make our previous the node we are currently inside
            current = temp //go to the value that our current node used to point to and repeat this operation
            
        }
        self.head = prev! //when we hit a nil, we're at the end of the list. Make the new start of the list the value inside our previous. When we hit a nil, we exit the while loop, so prev will be the node that was the last current
    }
}

