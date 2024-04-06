add_rules("mode.debug", "mode.release")

add_requires {
    "objfw",
    "ogobject",
    "gtk4"
}

target("ObjGTK4")
    set_kind(is_kind("shared") and "shared" or "static")
    add_files("src/**.m")
    add_includedirs("include/OGTK", { private = true })
    add_includedirs("include/", { public = true })
    add_headerfiles("include/(OGTK/**.h)")
    add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
    set_warnings("none")
    add_packages("objfw", "ogobject", "gtk4")

    add_deps("OGAtk", "OGdk4", "OGdkPixbuf", "OGio", "OGPango", "OGsk4")

