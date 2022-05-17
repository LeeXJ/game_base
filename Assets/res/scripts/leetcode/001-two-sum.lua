-- https://leetcode.cn/problems/two-sum/

function two_sum(nums, target)
    local n = #nums
    for i = 1, n do
        for j = i + 1, n do
            if nums[i] + nums[j] == target then
                return {i, j}
            end
        end
    end
    return {}
end

-- function two_sum(nums, target)
--     local hashtable = {}
--     for i = 1, #nums do
--         local id = hashtable[target - nums[i]]
--         if id then
--             return {id, i}
--         end
--         hashtable[nums[i]] = i
--     end
--     return {}
-- end

-- local result = two_sum({2, 7, 11, 15}, 9)
-- local result = two_sum({3, 2, 4}, 6)
local result = two_sum({3, 3}, 6)
print(result[1] - 1, result[2] - 1)
