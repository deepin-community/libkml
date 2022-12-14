ExternalProject_Add(URIPARSER
  PREFIX URIPARSER
  URL "http://sourceforge.net/projects/uriparser/files/Sources/0.7.5/uriparser-0.7.5.tar.bz2/download"
  URL_MD5 4f4349085fe5de33bcae8d0f26649593
  BINARY_DIR ${CMAKE_BINARY_DIR}/URIPARSER/build
  DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
  PATCH_COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/cmake/UriParser_cmake_lists_txt ${CMAKE_BINARY_DIR}/URIPARSER/src/URIPARSER/CMakeLists.txt
  CMAKE_CACHE_ARGS
  -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
  -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
  -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS} )


if(MSVC)
include_project_vars(URIPARSER "uriparser")
else()
include_project_vars(URIPARSER "liburiparser")
endif()
