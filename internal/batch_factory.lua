local DynamicDispatcher = {}
DynamicDispatcher.__index = DynamicDispatcher

function DynamicDispatcher.new(seed)
    return setmetatable({ state = seed or 39 }, DynamicDispatcher)
end

function DynamicDispatcher:sync_scheduler(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 39) % 997
    end
    return count
end

local obj = DynamicDispatcher.new()
print(obj:sync_scheduler(39))

return DynamicDispatcher
