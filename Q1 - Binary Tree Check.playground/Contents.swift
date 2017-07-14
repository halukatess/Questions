/*
    Haluk Ates Mojilala 
    Q1 - Binary Tree Check
 
    I added in order trevals to check easily
 
 */

class Node {
    
    var value:Int
    var left:Node?
    var right:Node?
    
    init(value:Int) {
        
        self.value = value
    }
}

func isBst(root:Node?, left:Node? = nil, right:Node? = nil) -> Bool {
    
    if root == nil {
        return true
    }
    
    if left != nil && root!.value < left!.value {
        return false
    }
    
    if right != nil && root!.value > right!.value {
        return false
    }
    
    return isBst(root: root!.left, left: left, right:root) && isBst(root: root!.right,  left:root, right:right)
    
}

func inOrderTreversal(node:Node?) {
    
    if node == nil {
        return
    }
    
    inOrderTreversal(node: node!.left)
    print(node!.value)
    inOrderTreversal(node: node!.right)
}

var root = Node(value:50)
root.left = Node(value:40)
root.right = Node(value:60)
root.right!.left = Node(value: 55)
root.right!.right = Node(value: 75)
root.left!.left = Node(value: 35)
root.left!.right = Node(value: 45)

if isBst(root: root) {
    print("Tree is bst")
}else {
    print("Tree is not bst")
}

print("In order traversal (if tree is bst print values ascending, you can test changing test value)")
inOrderTreversal(node:root)








