-- https://leetcode.cn/problems/remove-element/

function removeElement(nums, val)
    local n = #nums
    local left = 1
    for right = 1, n do
        if nums[right] ~= val then
            nums[left] = nums[right]
            left = left + 1
        end
    end
    for i = left, n do
        nums[i] = nil
    end
    return #nums
end

print(removeElement({3, 2, 2, 3}, 3))
print(removeElement({0, 1, 2, 2, 3, 0, 4, 2}, 2))
