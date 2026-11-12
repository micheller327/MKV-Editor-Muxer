local SimpleAdapter = {}
SimpleAdapter.__index = SimpleAdapter

function SimpleAdapter.new(seed)
    return setmetatable({ state = seed or 60 }, SimpleAdapter)
end

function SimpleAdapter:dispatch_collector(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 60) % 997
    end
    return result
end

local obj = SimpleAdapter.new()
print(obj:dispatch_collector(60))

return SimpleAdapter
