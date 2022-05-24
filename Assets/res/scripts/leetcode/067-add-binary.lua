-- -- https://leetcode.cn/problems/add-binary/

function addBinary(a, b)
    local ans = {}
    local one = string.byte("1")

    local n, carry, j = math.max(#a, #b), 0, 0
    local ai, bi = 0, 0
    for i = 1, n do
        -- 从尾部开始倒叙
        ai = #a - i + 1
        bi = #b - i + 1
        if ai > 0 and a:byte(ai) == one then
            carry = carry + 1
        end
        if bi > 0 and b:byte(bi) == one then
            carry = carry + 1
        end
        ans[#ans + 1] = carry % 2
        carry = math.floor(carry / 2)
    end
    if carry > 0 then
        ans[#ans + 1] = 1
    end
    local tmp = {}
    for i = #ans, 1, -1 do
        tmp[#tmp + 1] = ans[i]
    end
    return table.concat(tmp)
end

print(addBinary("11", "1"))
print(addBinary("1010", "1011"))
