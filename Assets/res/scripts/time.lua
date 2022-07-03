time = {}
local cache = {}
local index = 1
local size = 0

function time.delay(frame, func)
    local t = {}
    t.start = frame + Game.frame
    t.func = func
    size = size + 1
    cache[size] = t
end

function time.update()
    while index <= size do
        if cache[index].start < Game.frame then
            cache[index].func()
            index = index + 1
        else
            break
        end
    end
end
