-- https://leetcode.cn/problems/maximum-subarray/

function maxSubArray(nums)
    local pre, maxAns = 0, nums[1]
    for i = 1, #nums do
        pre = math.max(pre + nums[i], nums[i])
        maxAns = math.max(maxAns, pre)
    end
    return maxAns
end

print(maxSubArray({-2, 1, -3, 4, -1, 2, 1, -5, 4}))
print(maxSubArray({1}))
print(maxSubArray({5, 4, -1, 7, 8}))
