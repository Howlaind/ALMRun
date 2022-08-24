target("ALMRun")
    set_kind("binary")
    set_arch("x86")
    add_defines("UNICODE","_UNICODE","_WINSOCKAPI_","wxMSVC_VERSION_ABI_COMPAT")
    add_includedirs("third_party/lua/win32/include",
	"src/Dialog",
	"src")
--    add_includedirs("E:/wxWidgets-3.2.0/include",
--        "E:/wxWidgets-3.2.0/include/msvc")
    add_includedirs("third_party/wxWidgets/include",
        "third_party/wxWidgets/include/msvc",
	"third_party/wxWidgets/include/msvc/wx")
    add_files("src/*.cpp","src/Dialog/*.cpp") 
    add_files("resource/merry.rc")
    add_links("lua51")
    add_linkdirs("build")
    add_linkdirs("third_party/lua/win32/release")
--    add_linkdirs("third_party/lua/win32/static")
--    add_linkdirs("e:/wxWidgets-3.2.0/lib/vc_lib")
    add_linkdirs("third_party/wxWidgets/lib/vc14x_lib")
    set_runtimes("MD")
