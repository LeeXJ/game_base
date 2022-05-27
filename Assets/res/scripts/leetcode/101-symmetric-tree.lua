-- https://leetcode.cn/problems/symmetric-tree/
require("leetcodeutils/binary-tree")

function check(p, q)
    if not p and not q then
        return true
    end
    if not p or not q then
        return false
    end
    return p.val == q.val and check(p.left, q.right) and check(p.right, q.left)
end

function isSymmetric(root)
    return check(root, root)
end

print(isSymmetric(BuildBinaryTree({1, 2, 2, 3, 4, 4, 3})))
print(isSymmetric(BuildBinaryTree({1, 2, 2, nil, 3, nil, 3})))
