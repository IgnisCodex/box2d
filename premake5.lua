project "Box2D"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "off"

	targetdir (BIN_DIR .. "/%{prj.name}")
    objdir (OBJ_DIR .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	includedirs {
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"