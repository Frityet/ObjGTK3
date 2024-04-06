add_rules("mode.debug", "mode.release")

add_requires({
    "objfw",
    "ogobject",
    "gtk4"
}, { config = {shared = true} })

target("ObjGTK4-test")
    set_kind("binary")
    add_files("src/**.m")
    add_includedirs("src/")
    add_packages("objfw", "ogobject", "gtk4")
    add_deps("ObjGTK4")

