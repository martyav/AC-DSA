//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation

/*
1) Write an algorithm with the following runtimes:

a) O(1)
 
*/

func one(value: [Int]) -> Int {
    return value[0]
}

/*
b) O(n)
*/

func smallest(arr: [Int]) -> Int {
    var smallest = arr[0]
    for num in arr {
        if num < smallest {
            smallest = num
        }
    }
    return smallest
}
 
/*
c) O(nlog(n))
*/
func sort(arr: [Int]) -> [Int] {
    return arr.sorted(by: >)
}

/*
d) O(n^2)
*/

func quadratic(arr: [[Int]]) -> () {
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            print(arr[i][j])
        }
    }
}
//n = arr.count
//m = arr[i].count
//O(n * m)

func NSqrdTime(arr: [Int]) {
    var count = 0
    for _ in arr {
        for _ in arr {
            count += 1
        }
    }
}


//O(n * m)

 /*
e) O(n^3)
 */

func practiceFour(arr: [Int]) {
    for _ in 0...arr.count {
        NSqrdTime(arr: arr)
    }
}



/*
f) O(n^4)
*/

func practiceFive(arr: [Int]) {
    for _ in 0...arr.count {
        practiceFour(arr: arr)
    }
}

/*
g) O(n^2 * log(n))
*/

<<<<<<< HEAD
func O1() -> () {
    print("My runtime is constant.")
}

func On(_ text:[String]) -> () {
    for string in text {
        print(string)
    }
}

func Ologn(_ arr:[Int]) -> [Int] {
    return arr.sorted()
}

func On2(xArr: [Int], yArr: [Int]) -> () {
    for x in xArr {
        for y in yArr {
            print(x,y)
        }
    }
}

func On3(xArr: [Int], yArr: [Int]) -> () {
    for _ in xArr {
        On2(xArr: xArr, yArr: yArr)
    }
}

func On4(xArr: [Int], yArr: [Int]) -> () {
    for _ in xArr {
        for _ in yArr {
            print(On2(xArr: xArr, yArr: yArr))
        }
    }
}

func On2Ologn(xArr: [Int], yArr: [Int]) -> ([Int]) {
    //print(On2(xArr: Ologn(xArr), yArr: (Ologn(yArr))))
    var newArr:[Int] = []
    for x in xArr {
        newArr.append(x)
        newArr.sorted()
        for y in yArr {
            newArr.append(y)
            newArr.sorted()
        }
    }
    return newArr
}

print(On2Ologn(xArr: [0,8,5], yArr: [1,2,4]))
//On4(xArr:[1,4,3], yArr:[2,5,99])

=======
func sortThings(arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
    }
    return returnArr
}

>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c
/*
2) Identify the runtimes of the following algorithms
*/

func problemA(myString: String) {
    for c in myString.characters {
        for d in myString.characters {
            print(c,d)
        }
    }
}
 
//Runtime: O(n^2)

//Assume the size of the first arr = the number of arrays
func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]()
    for i in myArr {  //O(n)
        print(i[0])   //O(1)
        otherArr.append(i) //O(1)
        print(myArr[i[0]].contains(3))  //O(m)
    }
}

<<<<<<< HEAD
//Runtime: O(n * m) -- Because the contains method is an O(m) operation
=======
//Runtime: O(n * m)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemC(myArr: [Int]) -> Bool {
    if myArr.count < 10_000 {
        return true
    } else {
        return myArr[3] + 4 == 8
    }
}

<<<<<<< HEAD
//Runtime: O(1)
=======

//Runtime: O(1)

//O(n)
func myMap(boolArray: [Bool]) -> [Bool] {
    var newArr = [Bool]()
    for bool in boolArray { //(O(n)
        newArr.append(!bool) //O(1)
    }
    return newArr
}
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0}
}

//Runtime: O(n)

func problemE(myArr: [Int]) -> [Int] {
    //return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <)
    let firstArr = myArr.filter{$0 > 5}
    let secondArr = firstArr.map{$0 * 3}
    return secondArr.sorted(by: <)
    
}

<<<<<<< HEAD
//Runtime: O(nlogn) -- Filter is running through the array (O(n)) and generating a new, smaller array that map runs over (O(m)), which is then sorted (O(nlogn)...but because we're doing this stuff in a linear sequence, it's not multiplying anything by anything. It's additive. And sorted()'s runtime has the biggest order of magnitude, so we record the runtime as nlogn.)
=======
//Runtime: O(nlog(n))
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemF(myArr: Int) {
    for i in 0..<myArr {
        print(i)
    }
}

//Runtime: O(n)

func problemG(myArr: [[[[[[String]]]]]]) {
    print(myArr[0][0][0][0][0].contains("hi!"))
}

<<<<<<< HEAD
//Runtime: O(n) -- Because of the contains
=======
//Runtime: O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemH(arrOne: [Int], arrTwo: [Int]) {
    var counter = 0
    for numOne in arrOne {  //O(n)
        for numTwo in arrTwo { //O(n)
            if arrOne.contains(numTwo) && arrTwo.contains(numOne) {  //O(n) + O(n) = O(n)
                counter += 1
            }
        }
    }
}

<<<<<<< HEAD
//Runtime: O(n^3) -- Contains has to run through the whole array, right? And it's doing it twice on line 149...but that's just additive
=======
//Runtime: O(n^3)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemI(isEnabled: Bool) {
    for _ in 0..<(isEnabled ? 10 : 1_000_000) {
        print("it's on!")
    }
}

<<<<<<< HEAD
//Runtime: O(1) -- Linear is when the runtime scales as the input scales. But our input is always the same size
=======
let a = false ? 10 : 1_000_000

let b: Int? = nil


//let c = b ?? -1



var c = 0
if let bValue = b {
    c = bValue
} else {
    c = -1
}


print(c)

//Runtime: O(1)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0x0ff3c0000.

<<<<<<< HEAD
//a)What is the memory address of the 1st element? 0ff3c0000
//b)What is the memory address of the 2nd element? 0ff3c0018
//c)What is the memory address of the 4th element? 0ff3c0048
//d)What is the memory address of the 14th element? 0ff3c0000
//e)What is the memory address of the 52nd element? 0ff3c0000
//f)What is the memory address of the 58th element? 0ff3c0000

func convertToHex(_ num: Int) -> Int {
    var hexedNum: Int = num
    let singlesPlace = ((num) - 16) // this needs to be rewritten so that it keeps going until we get a single digit
    let sixteensPlace = ((num/16)%16)
    
    let hexedString = String(sixteensPlace) + String(singlesPlace)
    
    hexedNum = Int(hexedString)!
    
    return hexedNum
}

convertToHex(72)
=======
//a)What is the memory address of the 1st element?

//0x0ff3c0000

//b)What is the memory address of the 2nd element?

//0x0ff3c0018

//c)What is the memory address of the 4th element?

//0x0ff3c0048

//d)What is the memory address of the 14th element?

//0x0ff3c0138

//e)What is the memory address of the 52nd element?

//4C8

//f)What is the memory address of the 58th element?

//558
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast()

<<<<<<< HEAD
//Runtime: O(1) because it's just accessing the last element and it doesn't have to run thru the array to do that
=======
//O(1)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//b)
myArr.contains(1)

<<<<<<< HEAD
//Runtime: O(n) because it has to check the number against each element in the array
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//c
myArr.index(of: 9)

<<<<<<< HEAD
//RunTime: O(n) because it has to run through the array to find something...it's not grabbing index number 9, it's looking for the index of 9 if it's present in the array
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//d
myArr.count

<<<<<<< HEAD
//Runtime: O(n) because this has to count up each element...I think? It could also be O(1) if it's relying on knowing the index number of the last element in order to get the count! Ok, so Ben says Swift knows how much memory it has allocated for the array, so count is constant time.
=======
//O(1)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//e
myArr.insert(8, at: 0)

<<<<<<< HEAD
//Runtime: O(n) because it has to shift everything over
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//f
myArr.remove(at: 4)

<<<<<<< HEAD
//Runtime: O(n) because it also has to shift everything over
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//g
myArr.reverse()

<<<<<<< HEAD
//Runtime: O(n) because it has to run through the array and move everything over
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//h
let h = myArr.sorted(by: >)

<<<<<<< HEAD
//Runtime: O(nlogn)
=======
//O(nlog(n))
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//i
let i = myArr.map{$0 * 2}

<<<<<<< HEAD
//Runtime: O(n) because map runs through everything
=======
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//j
let j = myArr.filter{$0>0}

<<<<<<< HEAD
//Runtime: O(n) because it has to run through the array

//k
let k = myArr.reduce(0, +)

//Runtime: O(n) because it's a lot like map, except everything is going into an element instead of an array
=======
//O(n)

//k
let k = myArr.reduce(0, +)
//O(n)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//3) Given the array below write code that does the following:

let inputArray: [[Int]] = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
]

//a) Print out each element starting with the first row and ending with the last row
//b) Print out each element starting with the first column and ending with the last column
//c) Print out each diagonal
//d) Print out only numbers on the border
//e) Print out only numbers not on the border


//4) Sudoku
/*
Rules: The is a 9x9 gird where the objective is to place the numbers 1 to 9 in the empty squares so that each row, each column and each 3x3 box contains the same number only once.

Sudoku Example: https://github.com/C4Q/AC-DSA/blob/master/Arrays/Images/sudokuExamples.png
 
Exercise: Write a function that will check whether or not a fully filled sudoku board is a valid solution.

Input: 2D Array of Ints ranging from 1-9
Output: True or false
func checkSudokuBoard(sudokuBoard:[[Int]]) -> Bool {
    return true
}

*/






