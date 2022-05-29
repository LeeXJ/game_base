-- https://cache.one/read/16901906
function isalnum(c)
    if c:match("%W") then
        return false
    end
    return true
end