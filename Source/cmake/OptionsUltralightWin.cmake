add_definitions(-DNOMINMAX -DUNICODE -D_UNICODE -D_WINDOWS -DWINVER=0x601)

WEBKIT_OPTION_BEGIN()
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_3D_TRANSFORMS PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_ACCELERATED_2D_CANVAS PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_ACCESSIBILITY PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_API_TESTS PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_ATTACHMENT_ELEMENT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CHANNEL_MESSAGING PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CSS3_TEXT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CSS_BOX_DECORATION_BREAK PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CSS_COMPOSITING PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CSS_SELECTORS_LEVEL4 PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CURSOR_VISIBILITY PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_CUSTOM_SCHEME_HANDLER PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_DATALIST_ELEMENT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_DEVICE_ORIENTATION PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_DFG_JIT PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_DOWNLOAD_ATTRIBUTE PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_DRAG_SUPPORT PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_FETCH_API PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_FTL_JIT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_FULLSCREEN_API PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_GAMEPAD PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_GEOLOCATION PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INDEXED_DATABASE PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INDEXED_DATABASE_IN_WORKERS PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_COLOR PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_DATE PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_DATETIME_INCOMPLETE PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_DATETIMELOCAL PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_MONTH PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_TIME PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INPUT_TYPE_WEEK PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_INTL PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_JIT PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_LEGACY_CSS_VENDOR_PREFIXES PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_MATHML PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_MEDIA_CONTROLS_SCRIPT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_MEDIA_SOURCE PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_MEDIA_STATISTICS PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_METER_ELEMENT PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_MOUSE_CURSOR_SCALE PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_NETSCAPE_PLUGIN_API PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_NOTIFICATIONS PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_QUOTA PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_STREAMS_API PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_SAMPLING_PROFILER PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_SVG_FONTS PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_VIDEO PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_VIDEO_TRACK PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_WEBASSEMBLY PRIVATE OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_WEB_AUDIO PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_XSLT PUBLIC ON)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_REMOTE_INSPECTOR PRIVATE OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_PUBLIC_SUFFIX_LIST PRIVATE OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_WEB_CRYPTO PRIVATE OFF)

WEBKIT_OPTION_DEFAULT_PORT_VALUE(USE_SYSTEM_MALLOC PRIVATE ON)

WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_LEGACY_ENCRYPTED_MEDIA PUBLIC OFF)
WEBKIT_OPTION_DEFAULT_PORT_VALUE(ENABLE_WEBGL PUBLIC OFF)

WEBKIT_OPTION_END()

if (NOT WEBKIT_LIBRARIES_DIR)
    set(WEBKIT_LIBRARIES_DIR "${CMAKE_SOURCE_DIR}/deps/WebKitLibraries")
endif ()

include_directories("${CMAKE_BINARY_DIR}/DerivedSources/ForwardingHeaders" "${CMAKE_BINARY_DIR}/DerivedSources" "${WEBKIT_LIBRARIES_DIR}/include")
link_directories("${WEBKIT_LIBRARIES_DIR}/lib")
link_directories("${ULTRALIGHTCORE_DIR}/lib")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

if (MSVC)
    add_definitions(
        /wd4018 /wd4068 /wd4099 /wd4100 /wd4127 /wd4138 /wd4146 /wd4180 /wd4189
        /wd4201 /wd4206 /wd4244 /wd4251 /wd4267 /wd4275 /wd4288 /wd4291 /wd4305
        /wd4309 /wd4344 /wd4355 /wd4389 /wd4396 /wd4456 /wd4457 /wd4458 /wd4459
        /wd4481 /wd4503 /wd4505 /wd4510 /wd4512 /wd4530 /wd4610 /wd4611 /wd4646
        /wd4702 /wd4706 /wd4722 /wd4800 /wd4819 /wd4951 /wd4952 /wd4996 /wd6011
        /wd6031 /wd6211 /wd6246 /wd6255 /wd6387 /wd4577
    )

    # We do not use exceptions
    add_definitions(-D_HAS_EXCEPTIONS=0)
    add_compile_options(/EHa- /EHc- /EHs- /fp:except-)

    # We have some very large object files that have to be linked
    add_compile_options(/analyze- /bigobj)

    # Use CRT security features
    add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES=1)
	
    # Turn off certain link features
    #add_compile_options(/Gy- /openmp- /GF-)
	
	IF( NOT CMAKE_BUILD_TYPE )
       SET( CMAKE_BUILD_TYPE Release )
    ENDIF()
	
	# Force CMake to use the actual linker for linking instead of the C Compiler front-end
	# See Modules/CMakeCInformation.cmake in CMake's source distribution
	#set(CMAKE_C_LINK_EXECUTABLE
	#	"<CMAKE_LINKER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
	
	# Force CMake to use the actual linker for linking instead of the CXX Compiler front-end
	# See Modules/CMakeCXXInformation.cmake in CMake's source distribution
	#set(CMAKE_CXX_LINK_EXECUTABLE
	#	"<CMAKE_LINKER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")

	# Needed for bmalloc on Windows
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /LARGEADDRESSAWARE")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LARGEADDRESSAWARE")
	
	if (${CMAKE_BUILD_TYPE} MATCHES Debug OR ${CMAKE_BUILD_TYPE} MATCHES RelWithDebInfo)
		# Create pdb files for debugging purposes
		# add_compile_options(/Zi /GS)
		
		set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /DEBUG /OPT:NOREF /OPT:NOICF /DEBUG:FASTLINK")
		set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /DEBUG /OPT:NOREF /OPT:NOICF /DEBUG:FASTLINK")

		# To debug linking time issues, uncomment the following three lines:
		#add_compile_options(/Bv)
		#set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /VERBOSE /VERBOSE:INCR /TIME")
		#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /VERBOSE /VERBOSE:INCR /TIME")
	else ()
	    #add_compile_options(/GL /Os)
		#set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /OPT:REF /OPT:ICF /LTCG /INCREMENTAL:NO")
		#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /OPT:REF /OPT:ICF /LTCG /INCREMENTAL:NO")
		#set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /OPT:REF /OPT:ICF /LTCG /INCREMENTAL:NO")
		#set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /OPT:REF /OPT:ICF /LTCG /INCREMENTAL:NO")
		add_compile_options(/Os /cgthreads8)
        
        # Uncomment this block to add PDB to optimized release builds
        #add_compile_options(/Zi)
        #set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /OPT:REF /OPT:ICF /DEBUG")
		#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /OPT:REF /OPT:ICF /DEBUG")
		#set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /OPT:REF /OPT:ICF /DEBUG")
		#set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /OPT:REF /OPT:ICF /DEBUG")
	endif ()

    if (NOT ${CMAKE_GENERATOR} MATCHES "Ninja")
        link_directories("${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/${CMAKE_BUILD_TYPE}")
        add_definitions(/MP)
    endif ()
    if (NOT ${CMAKE_CXX_FLAGS} STREQUAL "")
        string(REGEX REPLACE "(/EH[a-z]+) " "\\1- " CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS}) # Disable C++ exceptions
        string(REGEX REPLACE "/EHsc$" "/EHs- /EHc- " CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS}) # Disable C++ exceptions
        #string(REGEX REPLACE "/GR " "/GR- " CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS}) # Disable RTTI
        string(REGEX REPLACE "/W3" "/W4" CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS}) # Warnings are important
    endif ()

    foreach (flag_var
        CMAKE_C_FLAGS CMAKE_C_FLAGS_DEBUG CMAKE_C_FLAGS_RELEASE
        CMAKE_C_FLAGS_MINSIZEREL CMAKE_C_FLAGS_RELWITHDEBINFO
        CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
        CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)
        # Force all projects to use the multithreaded DLL runtime.
        string(REGEX REPLACE "/MT" "/MD" ${flag_var} "${${flag_var}}")

        # No debug runtime, even in debug builds.
        if (NOT DEBUG_SUFFIX)
            string(REGEX REPLACE "/MDd" "/MD" ${flag_var} "${${flag_var}}")
            string(REGEX REPLACE "/D_DEBUG" "" ${flag_var} "${${flag_var}}")
        endif ()
    endforeach ()
endif ()

set(JavaScriptCore_LIBRARY_TYPE SHARED)
set(WTF_LIBRARY_TYPE SHARED)
set(ICU_LIBRARIES sicuuc sicuin sicudt)

set(USE_CF 1)
set(USE_CURL 1)
set(USE_HARFBUZZ 1)
set(USE_ICU_UNICODE 1)
set(USE_TEXTURE_MAPPER_GL 0)
set(USE_TEXTURE_MAPPER_ULTRALIGHT 1)
set(ENABLE_GRAPHICS_CONTEXT_3D 0)
set(USE_ULTRALIGHT 1)
set(ENABLE_DRAG_SUPPORT ON)
set(ENABLE_XSLT ON)
set(ENABLE_WEB_SOCKETS ON)
set(ENABLE_CHANNEL_MESSAGING ON)
set(ENABLE_REMOTE_INSPECTOR OFF)


# set(ENABLE_WEBKIT ON)

add_definitions(-DWTF_PLATFORM_ULTRALIGHT=1 -DU_STATIC_IMPLEMENTATION=1)

# If <winsock2.h> is not included before <windows.h> redefinition errors occur
# unless _WINSOCKAPI_ is defined before <windows.h> is included
# add_definitions(-D_WINSOCKAPI_=)