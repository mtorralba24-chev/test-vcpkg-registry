vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mtorralba24-chev/test-library-cpp
  REF 252fcbac2c32e130625387a7d0f77cec1ee14ddc
  SHA512 b063bf6d94115e13c1d8dbeb30508642a5ce01a51e4e0c46fe6d5859cafa8e718582bcbc1beb5436c24172f8369d096cbbd5975738e63a07f778ac903dc7ecd5
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
