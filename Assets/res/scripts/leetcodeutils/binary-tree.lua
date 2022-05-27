local list = nil
local i = 0
local j = 0
local queue = nil

local function next()
    i = i + 1
    return list[i]
end

local function pop()
    j = j + 1
    return queue[j]
end

local function push(val)
    queue[#queue+1] = val
end

local function empty()
    return j >= #queue
end

local function createNode()
    while not empty() do
        local node = pop()
        local left = next()
        local right = next()
        if left then
            node.left = {}
            node.left.val = left
            push(node.left)
        end
        if right then
            node.right = {}
            node.right.val = right
            push(node.right)
        end
    end
end

function BuildBinaryTree(data)
    list = data
    i = 0
    queue = {}
    local root = {}
    root.val = next()
    push(root)
    j = 0
    createNode()
    return root
end
