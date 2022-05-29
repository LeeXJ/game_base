-- https://leetcode.cn/problems/pascals-triangle-ii/

function getRow(rowIndex)
    local ret = {}
    for i = 1, rowIndex do
        ret[i] = {}
        ret[i][1], ret[i][i] = 1, 1
        for j = 2, i - 1 do
            ret[i][j] = ret[i - 1][j] + ret[i - 1][j - 1]
        end
    end
    return ret[rowIndex]
end

print(table.concat(getRow(4), " "))
print(table.concat(getRow(1), " "))
print(table.concat(getRow(2), " "))
