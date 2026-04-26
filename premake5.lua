workspace "Darts"
    location "build"
    configurations { "Debug", "Release" }
    startproject "Darts"
    architecture "x86_64"

project "Darts"
    kind "WindowedApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("%{wks.location}/bin/%{cfg.buildcfg}")
    objdir    ("%{wks.location}/obj/%{cfg.buildcfg}")

    files {
        "src/**.h",
        "src/**.hpp",
        "src/**.cpp",
        "vendor/**.h",
        "vendor/**.hpp",
        "vendor/**.cpp",
        "assets/**"
    }

    includedirs { "src", "vendor/glew/include", "vendor/glfw/include" }
    libdirs { "vendor/glew/bin", "vendor/glfw/bin" }

    postbuildcommands { "{COPYDIR} %{wks.location}/../assets %{cfg.targetdir}/assets" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        optimize "Off"

    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "Speed"
        symbols "Off"

    filter "system:linux"
        links { "GL", "glfw3", "GLEW" }
        buildoptions { "-Wall", "-Wextra", "-Wpedantic", "-Wno-unused-parameter" }