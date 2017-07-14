/*
    Haluk Ates
    Q2 - Detecting Cycle In Linked List
 */

class Node {
    
    var value: Int?
    var next: Node?
    
    init(value:Int) {
        
        self.value = value
    }
}

class LinkedList {
    
    var head:Node?
    var tail:Node?
    
    public func append(node: Node) {
        
        if let _ = tail {
            tail!.next = node
        }
        else {
            head = node
        }
        
        tail = node
    }
}

func checkCycleExist(node:Node?) -> Bool {
    
    var slow = node
    var fast = node
    
    while fast != nil && fast?.next != nil {
        
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast {
            return true
        }
    }
    
    return false
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
let node4 = Node(value: 4)

let list = LinkedList()
list.append(node: node1)
list.append(node: node2)
list.append(node: node3)
list.append(node: node4)

if checkCycleExist(node: node1) {
    print("Cycle exist")
} else {
    print("Cycle does not exist")
}

