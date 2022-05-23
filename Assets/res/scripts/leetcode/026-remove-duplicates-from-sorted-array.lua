-- https://leetcode.cn/problems/remove-duplicates-from-sorted-array/solution/

function removeDuplicates(nums)
    local n = #nums
    if 0 == n then
        return 0
    end
    local fast, slow = 2, 2
    while fast <= n do
        if nums[fast] ~= nums[fast - 1] then
            nums[slow] = nums[fast]
            slow = slow + 1
        end
        fast = fast + 1
    end
    for i = slow, n do
        nums[i] = nil
    end
    return #nums
end

print(removeDuplicates({1, 1, 2}))
print(removeDuplicates({0, 0, 1, 1, 1, 2, 2, 3, 3, 4}))
