local CoreAdapter = {}
CoreAdapter.__index = CoreAdapter

function CoreAdapter.new(seed)
    return setmetatable({ state = seed or 42 }, CoreAdapter)
end

function CoreAdapter:parse_gateway(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 42) % 997
    end
    return total
end

local obj = CoreAdapter.new()
print(obj:parse_gateway(42))

return CoreAdapter
