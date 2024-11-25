vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mtorralba24-chev/test-library-cpp
  REF 252fcbac2c32e130625387a7d0f77cec1ee14ddc
  SHA512 0
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
