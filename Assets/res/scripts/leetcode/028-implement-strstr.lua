-- https://leetcode.cn/problems/implement-strstr/

function strStr(haystack, needle)
    local n, m = #haystack, #needle
    for i = 0, n - m do
        local flag = true
        for j = 1, m do
            if haystack:byte(i + j) ~= needle:byte(j) then
                flag = false
                break
            end
        end
        if flag then
            return i
        end
    end
    return -1
end

print(strStr("hello", "ll"))
print(strStr("aaaaa", "bba"))
