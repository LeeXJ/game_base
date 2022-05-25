-- https://leetcode.cn/problems/climbing-stairs/

function climbStairs(n)
    local p, q, r = 0, 0, 1
    for i = 1, n do
        p = q
        q = r
        r = p + q
    end
    return r
end

print(climbStairs(2))
print(climbStairs(3))