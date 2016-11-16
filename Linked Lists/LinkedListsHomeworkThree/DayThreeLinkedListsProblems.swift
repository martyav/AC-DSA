//
//  DayThreeLinkedListsProblems.swift
//  LinkedListsHomeworkThree
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


class Node<T> {
    var key: T!
    var next: Node?
    var previous: Node?
}

class LinkedList<T: Equatable> {
    
    var head = Node<T>()
    
    var count: Int {
        return 0
    }
    
    //empty list check
    func isEmpty() -> Bool {
        guard head.key != nil else {return true}
        return false
    }
    
    
    
    //add link item to end
    func append(element key: T) {
        //make sure we actually have a list
        guard head.key == nil else {return}
        //create a new node
        let new = Node<T>()
        //fill that node
        new.key = key
        //set the next to nil
        new.next = nil
        //connect that node to the list
        var current = head
        
        while current.next != nil {
            current = current.next!
        }
        new.previous = current
        
        //reset the previous for current to point back to the node we just created
        current.next = new
    }
    
    //print all keys for the class
    func printAllKeys() {
        guard head.key == nil else {return}
        var current = head
        while current.key != nil {
            print(current.key)
            guard current.next == nil else {return}
            current = current.next!
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        guard head.next == nil else {return nil}
        var indexCounter = 0
        var current = head
        while current.key != nil {
            if indexCounter == index {
                return current
            } else {
                indexCounter += 1
                guard current.next == nil else {return current}
                current = current.next!
                continue
            }
        }
        return Node<T>()
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
