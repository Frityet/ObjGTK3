add_rules("mode.debug", "mode.release")

add_requires {
    "objfw",
    "ogobject",
    "gio-2.0",
    "gio-unix-2.0"
}

target("OGio")
    set_kind(is_kind("shared") and "shared" or "static")
    add_files("src/**.m")
    add_includedirs("include/", { public = true })
    add_includedirs("include/OGio", { private = true })
    add_headerfiles("include/(OGio/**.h)")
    add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
    set_warnings("none")
    add_packages("objfw", "ogobject", "gio", "gio-unix-2.0")

