-- https://leetcode.cn/problems/search-insert-position/

function searchInsert(nums, target)
    local n = #nums
    local left, right, ans = 1, n, n + 1
    while left < right do
        local mid = ((right - left) >> 1) + left
        if target <= nums[mid] then
            ans = mid
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return ans
end

print(searchInsert({1, 3, 5, 6}, 5))
print(searchInsert({1, 3, 5, 6}, 2))
print(searchInsert({1, 3, 5, 6}, 7))
