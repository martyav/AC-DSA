//
//  DoublyLinkedList.swift
//  LinkedListsHomeworkTwo
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T: Comparable> {
    var key: T!
    var next: Node?
}


class LinkedList<T: Comparable> {
    var head  = Node<T>()
    
    func printAllKeys() {
        
        var currentNode: Node<T>! = head
        
        while currentNode != nil {
            print(currentNode.key)
            currentNode = currentNode.next
        }
    }
    
    var count: Int {
        if head.key == nil {
            return 0
        } else {
            var currentNode = head
            var counter = 1
            while currentNode.next != nil {
                currentNode = currentNode.next!
                counter += 1
            }
            return counter
        }
    }
    
    func append(element newKey: T) {
        guard head.key != nil else {
            head.key = newKey
            return
        }
        
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next = Node()
        currentNode.next!.key = newKey
    }

    //Problem One
    //See Exercise One (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)
    func equals(otherList: LinkedList ) -> Bool {

        var ourListsCurrent = head
        var otherListsCurrent = otherList.head
        
        let ourCount = self.count
            print("our count is \(ourCount)")
        let otherListsCount = otherList.count
            print("other count is \(otherListsCount)")
            
        if ourCount != otherListsCount {
             print(ourCount == otherListsCount)
            return false
        } else {
            while ourListsCurrent.next != nil {
                if ourListsCurrent.key != otherListsCurrent.key {
                    print("the keys don't match, it's false")
                    return false
                } else {
                ourListsCurrent = ourListsCurrent.next!
                otherListsCurrent = otherListsCurrent.next!
                continue
                }
            }
            }
            print("all the keys match, it's true")
            return true
        }
    }

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    var oneCurrent = listOne.head
    var twoCurrent = listTwo.head
    
    var oneHoldIt = listOne.head.next
    var twoHoldIt = listTwo.head.next
    
////    var end = Node?
////    end.next = nil
//
//    
//    var rand = arc4random_uniform(2)
//    
//    if rand == 0 {
//        while oneCurrent.next != nil {
//            oneHoldIt = oneCurrent.next
//            listOne.append(element: twoCurrent.key)
//            var temp = twoCurrent // 3. ???
//            // 4. profit!
//        }
//        return listOne
//        
//    } else {
//        while twoCurrent.next != nil {
//            twoHoldIt = twoCurrent.next
//            listTwo.append(element: oneCurrent.key)
//            var temp = oneCurrent
//        }
        return listTwo
//    }
}
