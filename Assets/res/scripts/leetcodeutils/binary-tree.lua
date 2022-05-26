local list = nil
local i = 0

local function pop()
    i = i + 1
    return list[i]
end

local function createNode(val)
    if nil ~= val then
        local node = {}
        node.val = val
        local left = pop()
        local right = pop()
        if left then
            node.left = createNode(left)
        end
        if right then
            node.right = createNode(right)
        end
        return node
    end
end

function BuildBinaryTree(data)
    list = data
    i = 0
    return createNode(pop())
end
