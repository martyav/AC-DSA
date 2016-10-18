//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros 
//The third element is the number of positive values.


func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var neg = 0
    var zeros = 0
    var pos = 0
    
    for num in myArr {
        if num > 0 {
            pos += 1
        }
        else if num < 0 {
            neg += 1
        }
        else {
            zeros += 1
        }
    }
    
    return (neg, zeros, pos)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    var sortedArr: [Int]
    
    guard myArr.count < 2 else {
        sortedArr = myArr.sorted{$0 < $1}
        return sortedArr[1]
    }
        return nil
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    if x % 2 == 0 {
        return false
    } else { // i know this test is kind of slow and awful
        for num in 3..<x {
            if x % num != 0 {
                continue
            } else {
                return false
            }
        }
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var cleanString = ""
    let sCharArr = s.characters
    
    for char in sCharArr {
        if char != c {
            cleanString += String(char)
        } else {
            continue
        }
    }
    
    return cleanString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var cleanString = ""
    let sCharArr = s.characters
    
    for char in sCharArr {
        for index in 0..<arr.count {
            removeCharacter(s: s, c:arr[index])
        }
    }
    
    return cleanString
}

