package("gio")
    set_homepage("https://docs.gtk.org/gio/")
    set_description("Useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality")
    set_license("LGPL-2.1")
    add_extsources("pkgconfig::gio-2.0")
    add_extsources("pkgconfig::gio")

    add_extsources("brew::glib")
    add_extsources("apt::libglib2.0-dev")
    add_extsources("vcpkg::glib")
    add_extsources("pacman::glib2")

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

