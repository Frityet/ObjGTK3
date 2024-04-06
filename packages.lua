package("OGObject")
    set_homepage("https://codeberg.org/ObjGTK/OGObject")
    add_urls("https://codeberg.org/ObjGTK/OGObject.git")
    add_versions("latest", "unique-wrappers")

    add_deps("objfw", { configs = { shared = true } })
    add_deps("glib")


    on_install("linux", "macosx", function (package)
        --[[@cast package Package]]
        local autoconf = import("package.tools.autoconf")
        os.addenvs { PATH = package:dep("objfw"):installdir("bin") }
        autoconf.install(package)
    end)
