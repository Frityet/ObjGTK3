package("gio")
    set_homepage("https://docs.gtk.org/gio/")
    set_description("Useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality")
    set_license("LGPL-2.1")
    add_extsources("pkgconfig::gio-2.0")
    add_extsources("pkgconfig::gio")

    add_deps("glib")


package("gio-unix")
    set_homepage("https://docs.gtk.org/gio/")
    set_description("Useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality")
    set_license("LGPL-2.1")
    add_extsources("pkgconfig::gio-unix-2.0")
    add_extsources("pkgconfig::gio-unix")

    add_deps("gio")

package("atk")
    set_homepage("https://docs.gtk.org/atk/")
    set_description("Accessibility Toolkit")
    set_license("LGPL-2.1")
    add_extsources("pkgconfig::atk-1.0")
    add_extsources("pkgconfig::atk")


    add_deps("glib")

package("ogobject")
    set_homepage("https://codeberg.org/ObjGTK/OGObject")
    add_urls("https://codeberg.org/ObjGTK/OGObject.git")
    add_versions("latest", "unique-wrappers")

    -- this package requires the shared version of objfw because it uses the framework
    add_deps("objfw", { configs = { shared = true } })
    add_deps("glib")

    on_install("linux", "macosx", function (package)
        os.addenvs { PATH = package:dep("objfw"):installdir("bin") }
        import("package.tools.autoconf").install(package)
    end)

