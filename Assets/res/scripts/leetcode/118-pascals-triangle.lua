-- https://leetcode.cn/problems/pascals-triangle/

function generate(numRows)
    local ret = {}
    for i = 1, numRows do
        ret[i] = {}
        ret[i][1], ret[i][i] = 1, 1
        for j = 2, i - 1 do
            ret[i][j] = ret[i - 1][j] + ret[i - 1][j - 1]
        end
    end
    return ret
end

print(generate(5))
print(generate(1))
