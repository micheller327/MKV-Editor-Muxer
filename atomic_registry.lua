local LocalLoader = {}
LocalLoader.__index = LocalLoader

function LocalLoader.new(seed)
    return setmetatable({ state = seed or 26 }, LocalLoader)
end

function LocalLoader:build_session(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 26) % 997
    end
    return count
end

local obj = LocalLoader.new()
print(obj:build_session(26))

return LocalLoader
