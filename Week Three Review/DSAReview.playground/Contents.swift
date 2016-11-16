//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Two Dimensional Arrays

//Write a function that takes a square 2-Dimensional array of Ints and rotates it 90 degrees

//Sample input:
let testArr = [[1,2,3],
                [4,5,6],
                [7,8,9]]

//Sample output:
let testArrOut = [[7,4,1],
                  [8,5,2],
                  [9,6,3]]

//Bonus: Handle arrays that are not square

let testArr2 = [[1,2,3,4],
                [5,6,7,8]]

let testArr2Out = [[5,1],
                   [6,2],
                   [7,3],
                   [8,4]]

let testArr3 = [[1,2],[3,4], [5,6]]

func rotate(_ arr:[[Int]]) -> [[Int]] {
    var newArr = [[Int]]()
    var newInnards = [Int]()

    for _ in 0..<arr[0].count {
        newInnards = []
        for _ in 0..<arr.count {
            newInnards.append(1)
        }
    newArr.append(newInnards)
    }
    
    for arrayIndex in 0..<arr.count {
        for innerArrayIndex in 0..<arr[arrayIndex].count {
            if innerArrayIndex < arr.count - 1 {
                newArr[innerArrayIndex][(arr.count - 1) - arrayIndex] = arr[arrayIndex][innerArrayIndex]
            } else {
                newArr[innerArrayIndex][(arr.count - 1) - arrayIndex] = arr[arrayIndex][innerArrayIndex]
            }
        }
    }
    return newArr
}

print(rotate(testArr))
print(testArrOut)
print(" ")
print(rotate(testArr2))
print(testArr2Out)
//Stacks

//Implement a Stack using an Array

class Stack {
    func pop(){}
    func push(){}
    func peek(){}
    func isEmpty(){}
}


//Linked Lists

//Implement a singly linked list with the following methods

class Node{

}

class LinkedList {
    func isEmpty() {}
    func append(){}
    func delete(at: Int){}
    func insert(at: Int){}
    var count: Int = 0
}


//Queues

//Implement a Queue using a Linked List.

class Queue {
    private var list = LinkedList()
    func enQueue(){}
    func deQueue(){}
    func peek(){}
    func isEmpty(){}
}


//Advanced:

//1) Write map, filter and reduce functions for your Stack, Queue and LinkedList


//2) Write a reverse() function for your Stack, Queue and LinkedList

//2b) Write a reverse() funciton for your LinkedList that works in O(1) space


//3) https://projecteuler.net/problem=2
/*
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/

//4) https://projecteuler.net/problem=7

/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/


