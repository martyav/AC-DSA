//
//  QueueProblems.swift
//  QueuesHWProblems
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//In all problems, the input queue should be in its original state after your function is done running.



//Find the sum of a queue
func sum(q: Queue<Int>) -> Int? {
    var sum = 0
    let tempQ = Queue<Int>()
    
    guard q.isEmpty() == true else {return nil}
    
    while q.isEmpty() == false {
        let popped = q.deQueue()
        sum += popped!
        tempQ.enQueue(newElement: popped!)
    }
    
    while tempQ.isEmpty() == false {
        let popped = tempQ.deQueue()
        q.enQueue(newElement: popped!)
    }
    
    print(tempQ)
    return sum
}


//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    var smallestSoFar: T?
    
    let tempQ = Queue<T>()
    
    if q.isEmpty() == true {
        return nil
    } else {
        smallestSoFar = q.peek()
        while q.isEmpty() == false {
            let popped = q.deQueue()
            if popped! < smallestSoFar! {
                smallestSoFar = popped!
                tempQ.enQueue(newElement: popped!)
            } else {
                tempQ.enQueue(newElement: popped!)
                continue
            }
        }
        while tempQ.isEmpty() == false {
            let popped = tempQ.deQueue()
            q.enQueue(newElement: popped!)
        }
    }
    return smallestSoFar
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool {
    var current: T
    var previous: T
    var checker = [T]()
    
    return false
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    return Queue<T>()
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    return false
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

