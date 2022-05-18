-- https://leetcode.cn/problems/roman-to-integer/

-- local symbolValues = {
--     ["I"] = 1,
--     ["V"] = 5,
--     ["X"] = 10,
--     ["L"] = 50,
--     ["C"] = 100,
--     ["D"] = 500,
--     ["M"] = 1000
-- }

local symbolValues = {
    [string.byte("I")] = 1,
    [string.byte("V")] = 5,
    [string.byte("X")] = 10,
    [string.byte("L")] = 50,
    [string.byte("C")] = 100,
    [string.byte("D")] = 500,
    [string.byte("M")] = 1000
}

function romanToInt(s)
    local ans = 0
    local n = #s
    for i = 1, n do
        local value = symbolValues[s:byte(i)]
        if i < n and value < symbolValues[s:byte(i+1)] then
            ans = ans - value
        else
            ans = ans + value
        end
    end
    return ans
end

print(romanToInt('III'))
print(romanToInt('IV'))
print(romanToInt('IX'))
print(romanToInt('LVIII'))
print(romanToInt('MCMXCIV'))

-- print(string.byte('I'))