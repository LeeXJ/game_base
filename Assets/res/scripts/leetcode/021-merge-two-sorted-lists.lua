-- https://leetcode.cn/problems/merge-two-sorted-lists/solution/he-bing-liang-ge-you-xu-lian-biao-by-leetcode-solu/

function mergeTwoLists(l1, l2)
    local tmp = {}
    local index1, index2 = 1, 1
    while index1 <= #l1 and index2 <= #l2 do
        if l1[index1] < l2[index2] then
            tmp[#tmp + 1] = l1[index1]
            index1 = index1 + 1
        else
            tmp[#tmp + 1] = l2[index2]
            index2 = index2 + 1
        end
    end
    for i = index1, #l1 do
        tmp[#tmp + 1] = l1[i]
    end
    for i = index2, #l2 do
        tmp[#tmp + 1] = l2[i]
    end
    return tmp
end

local test = mergeTwoLists({1, 2, 3, 7}, {0, 4, 5, 6})
for i = 1, #test do
    print(test[i])
end
