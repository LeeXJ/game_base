-- https://leetcode.cn/problems/balanced-binary-tree/
require("leetcodeutils/binary-tree")

function height(root)
    if nil == root then
        return 0
    end
    return math.max(height(root.left), height(root.right)) + 1
end

function isBalanced(root)
    if nil == root then
        return true
    end
    return math.abs(height(root.left) - height(root.right)) <= 1 and isBalanced(root.left) and isBalanced(root.right)
end

print(isBalanced(BuildBinaryTree({3, 9, 20, nil, nil, 15, 7})))
print(isBalanced(BuildBinaryTree({1, 2, 2, 3, 3, nil, nil, 4, 4})))
print(isBalanced(BuildBinaryTree({})))
