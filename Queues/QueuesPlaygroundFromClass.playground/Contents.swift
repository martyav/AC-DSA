//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var key: T?
    var next: Node<T>?
}

class LinkedList<T> {
    var head: Node<T>
    var tail: Node<T>
    init() {
        self.head = Node<T>()
        self.tail = head
    }
}

class Queue<T> {
    private var list = LinkedList<T>()
    
    func deQueue() -> T? {
        //guard let list.head.key != nil else {return nil}
        
        if let currentHead = list.head.key {
            if let next = list.head.next {
                list.head = next
            } else {
                list.head = Node<T>()
                list.tail = list.head
                list.head.key = nil
            }
            return currentHead
        }
        return nil
    }
    
    func enQueue(_ newElement: T) {
        guard list.head.key != nil else {
            list.head.key = newElement
            return
        }
        
        let newNode = Node<T>()
        newNode.key = newElement
        
        list.tail.next = newNode
        list.tail = newNode
    }
    
    func peek() -> T? {
        return list.head.key
    }
    
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

var line = Queue<Int>()

line.enQueue(22)
line.enQueue(44)
line.deQueue()
line.peek()
line.isEmpty()
line.deQueue()
line.isEmpty()

/*
class Queue<T> {
    private var list = LinekdList<T>()
    
    func enQueue(newElement: T) {
        if list.head.key == nil {
            list.head.key = newElement
            return
        } else {
            let newNode = Node<T>()
            newNode.key = newElement
            list.tail.next = newNode
            list.tail = newNode
        }
    }
    
    func deQueue() -> T? {
        if let oldHeadKey = list.head.key {
            if let nextNode = list.head.next {
                list.head = nextNode
            } else {
                list.head.key = nil
            }
            return oldHeadKey
        } else {
            return nil
        }
    }
    
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
    
    func peek() -> T? {
        return list.head.key
    }
}
 */


