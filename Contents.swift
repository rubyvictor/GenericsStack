//: Playground - noun: a place where people can play

import UIKit

import UIKit

//User paremeter T to modify classes to give it any parameter
class Node<T> {
    
    let value: T
    var next: Node?
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peak() -> T? {
        return top?.value
    }
    
    
}

struct User {
    let name: String
    let userName: String
}

let me = User(name: "Victor", userName: "@VictorLee")
let you = User(name: "King", userName: "@KingMerciless")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)

let firstUserPop = usersStack.pop()
if let name = firstUserPop?.name, let username = firstUserPop?.userName {
    print("My name popped is: \(name)")
    print(firstUserPop?.userName ?? "")
}


let stack = Stack<Any>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

stack.peak()

let firstPop = stack.pop()
stack.peak()

let secondPop = stack.pop()
let thirdPop = stack.pop()
let fourthPop = stack.pop()
let fifthPop = stack.pop()
