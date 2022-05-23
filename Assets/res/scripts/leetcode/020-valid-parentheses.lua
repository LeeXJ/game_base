-- https://leetcode.cn/problems/valid-parentheses/solution/you-xiao-de-gua-hao-by-leetcode-solution/

-- local pairs = {
--     [")"] = "(",
--     ["]"] = "[",
--     ["}"] = "{"
-- }

local _pairs = {
    [string.byte(")")] = string.byte("("),
    [string.byte("]")] = string.byte("["),
    [string.byte("}")] = string.byte("{")
}

function isValid(s)
    local n = #s
    if n % 2 == 1 then
        return false
    end
    local stk = {}
    for i = 1, n do
        local b = s:byte(i)
        if _pairs[b] then
            if #stk == 0 or stk[#stk] ~= _pairs[b] then
                return false
            end
            stk[#stk] = nil
        else
            stk[#stk + 1] = b
        end
    end
    return (#stk == 0)
end

print(isValid("()"))
print(isValid("()[]{}"))
print(isValid("(]"))
print(isValid("([)]"))
print(isValid("{[]}"))
