project "Box2D"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir (BIN_DIR .. "/%{prj.name}")
    objdir (OBJ_DIR .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.c",
		"include/**.h"
	}

	includedirs {
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"
		buildoptions { "/std:c11" }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"