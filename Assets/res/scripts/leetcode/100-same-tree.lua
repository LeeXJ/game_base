-- https://leetcode.cn/problems/same-tree/
require("leetcodeutils/binary-tree")

-- 深度优先搜索
function isSameTree(p, q)
    if p == nil and q == nil then
        return true
    elseif p == nil or q == nil then
        return false
    elseif p.val ~= q.val then
        return false
    else
        return isSameTree(p.left, q.left) and isSameTree(p.right, q.right)
    end
end

print(isSameTree(BuildBinaryTree({1, 2, 3}), BuildBinaryTree({1, 2, 3})))
print(isSameTree(BuildBinaryTree({1, 2}), BuildBinaryTree({1, nil, 2})))
print(isSameTree(BuildBinaryTree({1, 2, 1}), BuildBinaryTree({1, 1, 2})))
