local lfs = require("lfs")


---@param str string
---@return string
local function pascal_to_snake(str)
    local out = ""
    for c in str:gmatch(".") do
        if c:match("%u") then
            out = #out > 0 and out.."_"..c or c
        else
            out = out..c
        end
    end
    --extremley lazy way to resolve GL becoming G_L
    out = out:gsub("_G_L_", "_GL_")
    return out
end

---@param name string
---@param header string
---@param impl string
---@return string new_header, string new_impl
local function mutate(name, header, impl)
    name = name:gsub("%.h", ""):gsub("OG", "")
    if not header:find("#include \"OGGskRenderNode.h\"") then
        header = header:gsub("#include <gsk/gsk.h>", "#include <gsk/gsk.h>\n#import \"OGGskRenderNode.h\"")
    end
    header = header:gsub(": GskRenderNode", ": OGGskRenderNode")

    local cast_func = pascal_to_snake(name):upper()
    --remove all instances of the cast func being called, its invalid!
    impl = impl:gsub(cast_func, "")

    return header, impl
end

local incdir = "include/OGsk4/"
local srcdir = "src/"
for file in lfs.dir(incdir) do
    if file:match("Node") then
        print("Patching "..file)
        local headerfile = incdir..file
        local implfile = srcdir..file:gsub("%.h", ".m")
        local header = assert(io.open(headerfile, "r")):read("*a")
        local impl = assert(io.open(implfile, "r")):read("*a")
        local new_header, new_impl = mutate(file, header, impl)
        assert(io.open(headerfile, "w+b")):write(new_header)
        assert(io.open(implfile, "w+b")):write(new_impl)
    end
end
