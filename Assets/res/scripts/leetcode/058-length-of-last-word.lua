-- https://leetcode.cn/problems/length-of-last-word/

function lengthOfLastWord(s)
    local index = #s
    local empty = string.byte(" ")
    while s:byte(index) == empty do
        index = index - 1
    end
    local wordLength = 0
    while index > 0 and s:byte(index) ~= empty do
        wordLength = wordLength + 1
        index = index - 1
    end
    return wordLength
end

print(lengthOfLastWord("Hello World"))
print(lengthOfLastWord("   fly me   to   the moon  "))
print(lengthOfLastWord("luffy is still joyboy"))
