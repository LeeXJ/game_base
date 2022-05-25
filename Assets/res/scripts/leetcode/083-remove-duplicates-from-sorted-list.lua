-- https://leetcode.cn/problems/remove-duplicates-from-sorted-list/

function deleteDuplicates(list)
    local slow = 1
    for fast = 1, #list do
        if list[slow] ~= list[fast] then
            slow = slow + 1
            list[slow] = list[fast]
        end
    end
    for i = slow + 1, #list do
        list[i] = nil
    end
    return list
end

print(table.concat(deleteDuplicates({1, 1, 2}), " "))
print(table.concat(deleteDuplicates({1, 1, 2, 3, 3}), " "))
