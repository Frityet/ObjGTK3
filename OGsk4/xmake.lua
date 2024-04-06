add_rules("mode.debug", "mode.release")

add_requires {
    "objfw",
    "ogobject",
    "gtk4"
}

target("OGsk4")
    set_kind(is_kind("shared") and "shared" or "static")
    add_files("src/**.m")
    add_includedirs("include/", { public = true })
    add_includedirs("include/OGsk4", { private = true })
    add_headerfiles("include/(OGsk4/**.h)")
    add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
    set_warnings("none")
    add_packages("objfw", "ogobject", "gtk4")

    add_deps("OGdk4", "OGPango")

