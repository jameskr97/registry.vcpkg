vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RuntimeCompiledCPlusPlus/RuntimeCompiledCPlusPlus
    REF "${VERSION}"
    SHA512 138110faba5d5df539abfb568677fad12792f87afbe2fc2c94ef71720a280294086cfdcadcecd95ac197124a7b57e3976ff7647372afe6e12ac0a0a91675484a
    HEAD_REF master
)


vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/Aurora"
    OPTIONS -BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()
vcpkg_fixup_pkgconfig()
vcpkg_copy_pdbs()


file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
