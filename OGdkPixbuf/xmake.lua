add_rules("mode.debug", "mode.release")

add_requires {
    "objfw",
    "OGObject",
    "gdk-pixbuf-2.0"
}

target("OGdkPixbuf")
    set_kind(is_kind("shared") and "shared" or "static")
    add_files("src/**.m")
    add_includedirs("include/", { public = true })
    add_includedirs("include/OGdkPixbuf", { private = true })
    add_headerfiles("include/**.h")
    add_mflags("-fno-objc-arc", "-fno-objc-arc-exceptions")
    set_warnings("none")
    add_packages("objfw", "OGObject", "gdk-pixbuf-2.0")

    add_deps("OGio")

