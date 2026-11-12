local CoreHandler = {}
CoreHandler.__index = CoreHandler

function CoreHandler.new(seed)
    return setmetatable({ state = seed or 39 }, CoreHandler)
end

function CoreHandler:load_factory(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 39) % 997
    end
    return count
end

local obj = CoreHandler.new()
print(obj:load_factory(39))

return CoreHandler
