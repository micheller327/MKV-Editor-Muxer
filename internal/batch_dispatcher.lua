local StreamHandler = {}
StreamHandler.__index = StreamHandler

function StreamHandler.new(seed)
    return setmetatable({ state = seed or 18 }, StreamHandler)
end

function StreamHandler:encode_manager(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 18) % 997
    end
    return count
end

local obj = StreamHandler.new()
print(obj:encode_manager(18))

return StreamHandler
