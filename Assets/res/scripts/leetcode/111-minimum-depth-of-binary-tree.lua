-- https://leetcode.cn/problems/minimum-depth-of-binary-tree/
require("leetcodeutils/binary-tree")

function minDepth(root)
    if nil == root then
        return 0
    end
    if root.left == nil and root.right == nil then
        return 1
    end
    local min_depth = math.maxinteger
    if root.left then
        min_depth = math.min(minDepth(root.left), min_depth)
    end
    if root.right then
        min_depth = math.min(minDepth(root.right), min_depth)
    end
    return min_depth + 1
end

print(minDepth(BuildBinaryTree({3, 9, 20, nil, nil, 15, 7})))
print(minDepth(BuildBinaryTree({2, nil, 3, nil, 4, nil, 5, nil, 6})))
