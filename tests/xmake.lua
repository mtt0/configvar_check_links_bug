add_requires("CONAN::gtest/1.10.0", {alias = "gtest"})

for _, filepath in ipairs(os.files("*.cc")) do
  target(path.basename(filepath))
    set_kind("binary")
    add_files(filepath)
    add_deps("add")
    add_packages("gtest")
end

