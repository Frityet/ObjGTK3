add_rules("mode.debug", "mode.release")

add_requires {
    "objfw",
    "ogobject",
    "gtk4" --should be gdk-4.0 but ?
}

target("OGdk4")
    set_kind(is_kind("shared") and "shared" or "static")
    add_files("src/**.m")
    add_includedirs("include/", { public = true })
    add_includedirs("include/OGdk4", { private = true })
    add_headerfiles("include/(OGdk4/**.h)")
    add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
    set_warnings("none")
    add_packages("objfw", "ogobject", "gtk4")

    add_deps("OGdkPixbuf")

