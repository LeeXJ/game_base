-- https://leetcode.cn/problems/longest-common-prefix/solution/zui-chang-gong-gong-qian-zhui-by-leetcode-solution/

function longestCommonPrefix(str1, str2)
    local length = math.min(#str1, #str2)
    local index = 1
    while index <= length and str1:byte(index) == str2:byte(index) do
        index = index + 1
    end
    return string.sub(str1, 1, index - 1)
end

function searchLongestCommonPrefix(strs)
    local count = #strs
    if count == 0 then
        return ""
    end
    local prefix = strs[1]
    for i = 2, count do
        prefix = longestCommonPrefix(prefix, strs[i])
        if #prefix == 0 then
            break
        end
    end
    return prefix
end

print(searchLongestCommonPrefix({"flower", "flow", "flight"}))
print(searchLongestCommonPrefix({"dog", "racecar", "car"}))
