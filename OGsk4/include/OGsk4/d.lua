local lfs = require("lfs")

---@param name string
---@param contents string
---@return string
local function mutate(name, contents)
    name = name:gsub(".h", "")
    --add `` on the line after `#include <gsk/gsk.h>`
    contents = contents:gsub("#include <gsk/gsk.h>", "#include <gsk/gsk.h>\n#include \"OGGskRenderNode.h\"")
end

for file in lfs.dir("./") do
    if file:match("Node") then
        local f = assert(io.open(file, "r"))
        local contents = f:read("*a")
        f:close()
        local new_contents = mutate(file, contents)
        f = assert(io.open(file, "w+b"))
        f:write(new_contents)
        f:close()
    end
end
