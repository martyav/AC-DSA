//
//  PracticeProblems.swift
//  LinkedListPracticeProblems
//
//  Created by C4Q  on 10/27/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Review One: Write a Node class and a Singly Linked List class that has a variable Node() at the head

class Node<T> {
    var key: T?
    var next: Node<T>!
    
//    init(key: T, next: Node<T>) {
//        self.key = key
//        self.next = next
//    }
}

class LinkedList<T: Equatable> {
    var head = Node<T>()


//Review Two: Write a print printAllKeys() method in your linked list class

    func printAllKeys() {
        var current = head
        
        guard current.key != nil else {return}
        
        while current.key != nil {
            print(current.key!)
            guard current.next != nil else {return}
            current = current.next
        }
    }

//Review Three: Write an append(newlement:) method in your linked list class

    func append(newlement: T) {
        let new = Node<T>()
        new.key = newlement
        
        if head.key == nil {
            head = new
        } else {
            var current = head
            
            while current.next != nil {
                current = current.next
        }
        current.next = new
        }
    }
    
    
//Review Four: Write a reverse() method in your linked list class
    func reverse() {
        if head.next == nil {
            return
        } else {
            var current = head
            var previous: Node<T>?
            var stashNext = head.next
            
            while current.next != nil {
                stashNext = current.next!
                current.next = previous! // this will crash on the head though
                previous = current
                current = stashNext!
            }
        }
    }

}

//Problem One: Given a singly linked list as input, write a function that returns the nth to last element

//Example
//Input: a -> b -> c -> d-> e, 2
//Output: d

func findNthFromLastIndex(_ num: Int, list: LinkedList<Int>) -> Node<Int>? {
    if list.head.key == nil {
        return list.head
    } else {
        var current = list.head
        var counter = 0
        
        while current.next != nil {
            counter += 1
            current = current.next
        }
        counter -= num
        current = list.head
        for _ in 0..<counter {
            current = current.next
        }
        return current
    }
    
}

//Problem Two: Implement an algorithm to delete a node in the middle of a single linked list, given only access to that node.

//EXAMPLE
//Input: the node ‘c’ from the linked list a->b->c->d->e
//Result: nothing is returned, but the new linked list looks like a->b->d->e

//Problem Three: You have two numbers represented by a singly linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1’s digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.

//EXAMPLE
//Input: (3 -> 1 -> 5) + (5 -> 9 -> 2)
//Output: 8 -> 0 -> 8


//Problem Four: Split a linked list in half
//Input: a -> b -> c -> d-> e
//Output: (a->b->c, d->e)
