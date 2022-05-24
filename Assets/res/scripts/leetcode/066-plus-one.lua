-- https://leetcode.cn/problems/plus-one/

function plusOne(digits)
    local n = #digits
    for i = n, 1, -1 do
        if digits[i] ~= 9 then
            digits[i] = digits[i] + 1
            for j = i + 1, n do
                digits[j] = 0
            end
            return digits
        end
    end
    local ans = {}
    for i = 1, n do
        ans[i + 1] = 0
    end
    ans[1] = 1
    return ans
end

print(table.concat(plusOne({1, 2, 3}), " "))
print(table.concat(plusOne({4, 3, 2, 1}), " "))
print(table.concat(plusOne({0}), " "))
