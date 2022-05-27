-- https://leetcode.cn/problems/convert-sorted-array-to-binary-search-tree/

function helper(nums, left, right)
    if left > right then
        return nil
    end
    local mid = ((right - left) >> 1) + left
    local node = {}
    node.val = nums[mid]
    node.left = helper(nums, left, mid - 1)
    node.right = helper(nums, mid + 1, right)
    return node
end

function sortedArrayToBST(nums)
    return helper(nums, 1, #nums)
end

local root = sortedArrayToBST({-10, -3, 0, 5, 9})