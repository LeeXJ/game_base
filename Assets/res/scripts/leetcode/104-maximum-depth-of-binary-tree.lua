-- https://leetcode.cn/problems/maximum-depth-of-binary-tree/
require("leetcodeutils/binary-tree")

function maxDepth(root)
    if nil == root then
        return 0
    end
    return math.max(maxDepth(root.left), maxDepth(root.right)) + 1
end

print(maxDepth(BuildBinaryTree({3, 9, 20, nil, nil, 15, 7})))
