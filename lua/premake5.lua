project "lua"
    kind "StaticLib"

    files { "*.c", "*.h", "*.hpp" }
    removefiles { "lua.c", "luac.c" }

    filter "action:vs*"
        buildoptions { "/TP" }

    filter "not action:vs*"
        buildoptions { "-x c++ -fPIC" }

    filter "system:bsd"
        defines { "LUA_USE_POSIX" }

    filter "system:macosx"
        defines { "LUA_USE_MACOSX" }
        buildoptions { "-mmacosx-version-min=10.9 -arch i386 -arch x86_64" }

    filter "system:linux"
        defines { "LUA_USE_LINUX" }
