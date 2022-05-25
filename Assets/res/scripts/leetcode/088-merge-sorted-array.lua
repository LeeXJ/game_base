-- https://leetcode.cn/problems/merge-sorted-array/solution/

function merge(nums1, m, nums2, n)
    local p1, p2 = 1, 1
    local sorted = {}
    local cur = 1
    while p1 <= m or p2 <= n do
        if p1 > m then
            cur = nums2[p2]
            p2 = p2 + 1
        elseif p2 > n then
            cur = nums1[p1]
            p1 = p1 + 1
        elseif nums1[p1] < nums2[p2] then
            cur = nums1[p1]
            p1 = p1 + 1
        else
            cur = nums2[p2]
            p2 = p2 + 1
        end
        sorted[p1 + p2 - 2] = cur
    end
    return sorted
end

print(table.concat(merge({1, 2, 3, 0, 0, 0}, 3, {2, 5, 6}, 3), " "))
print(table.concat(merge({1}, 1, {}, 0), " "))
print(table.concat(merge({0}, 0, {1}, 1), " "))
