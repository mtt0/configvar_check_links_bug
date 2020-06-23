set_xmakever("2.3.4")
set_languages("c99","cxx17")

includes("check_links.lua")

add_includedirs("include", {public = true})
add_includedirs("$(buildir)", {public = true})

target("add")
  set_kind("static")
  add_configfiles("src/*.in")
  add_files("src/*.cc")
  configvar_check_links("HAS_PTHREAD", {"pthread", "m", "dl"})

includes("tests")

