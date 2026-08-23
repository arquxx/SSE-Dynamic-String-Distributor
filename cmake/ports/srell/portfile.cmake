string(REPLACE "." "_" VERSION ${VERSION})

vcpkg_download_distfile(
    ARCHIVE
    URLS "https://akenotsuki.pages.dev/misc/srell/releases/srell${VERSION}.zip"
    FILENAME "srell${VERSION}.zip"
    SHA512 0
)

vcpkg_extract_source_archive(
    SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
    NO_REMOVE_ONE_LEVEL
)

file(INSTALL
    "${SOURCE_PATH}/srell.hpp"
    "${SOURCE_PATH}/srell_ucfdata2.h"
    "${SOURCE_PATH}/srell_updata3.h"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
)

file(INSTALL "${SOURCE_PATH}/license.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
