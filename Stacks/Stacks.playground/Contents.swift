//: Playground - noun: a place where people can play

class StackWithArr<T> {
    private var arr = Array<T>() // this is so users can't access the array to get stuff using indexes the way they usually can. if they could they wouldn't be using a stack. it would not be sporting
    
    //var top = arr[arr.count - 1]
    //var top = arr.last
    
    func pop() -> T? {
        //return arr.popLast()
        
        guard arr.count > 0 else {
            return nil
        }
        
        let top = arr[arr.count - 1]
        arr.remove(at: arr.count - 1)
        return top
    }
    
    func push(_ new: T) {
        arr.append(new) // we prefer appending over inserting because appending happens in constant time
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }

        return arr.last
    }
    
    func isEmpty() -> Bool {
        return self.pop() == nil
    }
}

let myStack = StackWithArr<Int>()

myStack.isEmpty()
myStack.push(4)
myStack.push(3)
myStack.push(12)

var x = myStack.peek()

print(x!)

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

// H -> 2 -> 3
// new -> H -> 2 -> 3


class StackWithLL<T> {
    private var list = LinkedList<T>()
    
    func pop() -> T? {
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
            list.head = Node<T>()
        }
        return oldHead
    }
    
    func push(_ new: T) {
        guard list.head.key != nil else {
            list.head.key = new
            return // you can return even if you're not returning anything
        }
        
        let newHead = Node<T>()
        let oldHead = list.head
        
        newHead.key = new
        newHead.next = oldHead
        
        list.head = newHead
    }
    
    func peek() -> T? {
        return list.head.key
    }
    
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
    
//    //pop
//    func pop() -> T? {
//        guard list.head.next != nil else {
//            list.head.key = nil
//            return nil
//        }
//        let oldKey = list.head.key
//        list.head = list.head.next!
//        return oldKey
//    }
//    
//    //push
//    func push(element: T) {
//        if list.head.key == nil {
//            list.head.key = element
//            return
//        }
//        let newNode = Node<T>()
//        newNode.key = element
//        newNode.next = list.head
//        list.head = newNode
//    }
//    
//    //peek
//    func peek() -> T? {
//        return list.head.key
//    }
//    
//    //isEmpty
//    func isEmpty() -> Bool {
//        return list.head.key == nil
//    }
}

let LLcoolStack = StackWithLL<Int>()

LLcoolStack.push(3)
LLcoolStack.push(23)
LLcoolStack.push(15)

LLcoolStack.peek()
