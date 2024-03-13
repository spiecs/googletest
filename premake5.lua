project "googlemock"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"googlemock/include/gmock/**.h",
    	"googlemock/src/**.cc",
	}

	includedirs
	{
		"googlemock/include",
		"googlemock",
		"googletest/include",
		"googletest"
	}

	filter "system:windows"
		systemversion "latest"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"