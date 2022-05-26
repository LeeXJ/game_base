-- https://leetcode.cn/problems/binary-tree-inorder-traversal/
require "leetcodeutils/binary-tree"

function inorder(root, res)
    if nil == root then
        return
    end
    inorder(root.left, res)
    res[#res + 1] = root.val
    inorder(root.right, res)
end

function inorderTraversal(root)
    local res = {}
    inorder(root, res)
    return res
end

local tree = BuildBinaryTree({1, nil, 2, 3})
print(table.concat(inorderTraversal(tree), " "))
local tree = BuildBinaryTree({})
print(table.concat(inorderTraversal(tree), " "))
local tree = BuildBinaryTree({1})
print(table.concat(inorderTraversal(tree), " "))
