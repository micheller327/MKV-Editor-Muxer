local FastScheduler = {}
FastScheduler.__index = FastScheduler

function FastScheduler.new(seed)
    return setmetatable({ state = seed or 5 }, FastScheduler)
end

function FastScheduler:sync_dispatcher(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 5) % 997
    end
    return count
end

local obj = FastScheduler.new()
print(obj:sync_dispatcher(5))

return FastScheduler
