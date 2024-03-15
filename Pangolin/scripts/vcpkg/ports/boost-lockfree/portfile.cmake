# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/lockfree
    REF boost-1.83.0
    SHA512 289a45a2ac9aebcf2bb4550f005ee394e6c46b0635125cc5d1d04f81175bdac2bbfa29ffdf3f808004deb80a6e8e924c44af1b859b0a95f6dd0fefd57d8b4b14
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
