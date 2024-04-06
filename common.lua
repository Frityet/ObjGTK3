
---@param name string
---@param deps string[]?
---@param pkgs string[]?
---@param extra fun()?
function gtarget(name, deps, pkgs, extra)
    add_rules("mode.debug", "mode.release")

    if pkgs then add_requires(pkgs) end

    target(name)
        set_kind(is_kind("shared") and "shared" or "static")
        -- set_optimize("fast")
        -- set_strip("all")
        add_files("src/**.m")
        add_includedirs("include/", { public = true })
        add_includedirs("include/"..name, { private = true }) --i dont know why but I have to
        add_headerfiles("include/**.h")
        add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
        set_warnings("none")
        add_packages("objfw", "OGObject")
        if deps then add_deps(deps) end
        if pkgs then add_packages(pkgs) end

        if extra then extra() end
end
