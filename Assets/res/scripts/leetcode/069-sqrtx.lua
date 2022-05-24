-- https://leetcode.cn/problems/sqrtx/

function mySqrt(x)
    local l, r, ans = 0, x, -1
    while l <= r do
        local mid = ((r - l) >> 1) + l
        if mid * mid <= x then
            ans = mid
            l = mid + 1
        else
            r = mid - 1
        end
    end
    return ans
end

print(mySqrt(4))
print(mySqrt(8))
