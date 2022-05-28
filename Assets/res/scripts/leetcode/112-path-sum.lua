-- https://leetcode.cn/problems/path-sum/
require("leetcodeutils/binary-tree")

function hasPathSum(root, sum)
    if nil == root then
        return false
    end
    if nil == root.left and nil == root.right then
        return sum == root.val
    end
    return hasPathSum(root.left, sum - root.val) or hasPathSum(root.right, sum - root.val)
end

print(hasPathSum(BuildBinaryTree({5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1}), 22))
print(hasPathSum(BuildBinaryTree({1, 2, 3}), 5))
print(hasPathSum(BuildBinaryTree({}), 0))
