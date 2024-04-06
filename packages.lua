package("gio")
    set_homepage("https://docs.gtk.org/gio/")
    set_description("Useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality")
    set_license("LGPL-2.1")

    on_fetch(function (package, opt)
        if opt.system and package.find_package then
            local result = package:find_package("gio-2.0")
            if not result then result = package:find_package("gio") end
            return result
        end
    end)

package("gio-unix")
    set_homepage("https://docs.gtk.org/gio/")
    set_description("Useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality")
    set_license("LGPL-2.1")

    on_fetch(function (package, opt)
        if opt.system and package.find_package then
            local result = package:find_package("gio-unix-2.0")
            if not result then result = package:find_package("gio-unix") end
            return result
        end
    end)

package("atk")
    set_homepage("https://docs.gtk.org/atk/")
    set_description("Accessibility Toolkit")
    set_license("LGPL-2.1")

    on_fetch(function (package, opt)
        if opt.system and package.find_package then
            local result = package:find_package("atk-1.0")
            if not result then result = package:find_package("atk") end
            return result
        end
    end)
