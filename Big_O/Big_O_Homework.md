###Big O Homework

##Instructions

Work on these problems in your fork of the AC-DSA repo.  Add the runtimes below, then push your commits up.  If you have not yet made a pull request, make a pull request against AC-DSA.

```swift
func problemOne(arr: [Int]) {
    for i in 0..<1000 {
        print(i)
    }
}
```

problemOne(arr:) runtime: O(1) -- No matter how much stuff is in the parameter arr, the function will always do the same thing -- print the numbers 0 to 999. The function actually doesn't do anything with arr.


```swift
func problemTwo(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            print("\(i), \(j)")
        }
    }
}
```

problemTwo(arr:) runtime: O(n^2) -- Nested loops add to the runtime at a rate of n to the number of loops. 2 loops, n to the power of 2 aka quadratically. 3 loops, cubic, etc. 


```swift
func problemThree(arr: [Int]) {
    for _ in 0..<1000 {
        problemOne(arr: arr)
    }
}
```

problemThree(arr:) runtime: O(1) -- This is just running one constant runtime function inside another constant runtime function   


```swift
func problemFour(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```

problemFour(arr:) runtime: O(n^2) -- This is running 3 nested loops, but we'll call it n^2 because as far as I know we don't really care what constant the n is being raised to, just the order of magnitude of the runtime 


```swift
func problemFive(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```

problemFive(arr:) runtime: O(n^2) -- This is the same as problemFour. Adding a second round of nested looping doesn't change what kind of runtime it is.


```swift
func problemSix(arr: [Int]) {
    for _ in 0..<arr.count {
        for _ in 0..<arr.count {
            problemTwo(arr: arr)
        }
    }
}
```

problemSix(arr:) runtime: O(n^2) -- This is n to the fourth power of nested looping but I don't think we need to report the exact constant when describing the runtime in bigO
