----------------------------------------
-- CONFIG
----------------------------------------

-- paths
local project_name  = "template"
local mod_folder    = "Dev"
local dir_mo2       = "D:/Games/Mods/SE/MO2/mods"
local clib_ng      = "../../_lib/commonlibsse-ng"

local dir_mod       = path.join(dir_mo2, mod_folder)

-- launch.json example:
-- .\\MO2\\ModOrganizer.exe -p "dev" SKSE

----------------------------------------
-- PROJECT SETUP
----------------------------------------
-- path to commonlibsse-ng, and other includes
includes(clib_ng)

set_project(project_name)
set_version("0.0.1")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

----------------------------------------
-- TARGET
----------------------------------------

target(project_name)
    set_kind("shared")

    add_rules("commonlibsse-ng.plugin", {
        name        = project_name,
        author      = "ASX",
        description = "SKSE Plugin"
    })

    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")

    -- include system libaries:
    -- add_syslinks("winmm")

    set_installdir(dir_mod)