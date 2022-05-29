-- https://leetcode.cn/problems/valid-palindrome/

require("leetcodeutils/isalnum")

function isPalindrome(s)
    s = string.lower(s)
    local sgood = {}
    for i = 1, #s do
        local c = string.char(s:byte(i))
        if isalnum(c) then
            sgood[#sgood + 1] = c
        end
    end
    local left, right = 1, #sgood
    while left < right do
        if sgood[left] ~= sgood[right] then
            return false
        end
        left = left + 1
        right = right - 1
    end
    return true
end

print(isPalindrome("A man, a plan, a canal: Panama"))
print(isPalindrome("race a car"))
