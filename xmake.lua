----------------------------------------
-- CONFIG
----------------------------------------

-- set mod install directory
local mod_dir = "D:/Games/Mods/SE/MO2/mods/Dev"
local project_name = "commonlibsse-ng-template"

-- include subprojects
includes("lib/commonlibsse-ng")

-- set project constants
set_project("project_name")
set_version("0.0.0")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

-- add common rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- define targets
target("project_name")
    add_rules("commonlibsse-ng.plugin", {
        name = "project_name",
        author = "ASX",
        description = "SKSE Plugin"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")

    -- set mod directory
    set_installdir(mod_dir)