vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mtorralba24-chev/test-library-cpp
  REF 252fcbac2c32e130625387a7d0f77cec1ee14ddc
  SHA512 980442b88da4cc3926b3e571cc38b823cce6c2cb7c2dfb30172b6d6b971316f845dfc613e5fcdc27ac7a797d1cfd20672dbc9e7e1be3435e3a239fbdac075c83
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
