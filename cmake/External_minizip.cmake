ExternalProject_Add(MINIZIP
  PREFIX MINIZIP
  URL "http://sourceforge.net/projects/libkml-files/files/1.3.0/minizip.tar.gz/download"
  URL_MD5 d5f74eff74e03e497ea60b2c43623416
  BINARY_DIR ${CMAKE_BINARY_DIR}/MINIZIP/build
  DEPENDS ${MINIZIP_DEPENDS}
  CMAKE_CACHE_ARGS
  -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
  -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
  -DZLIB_INCLUDE_DIR:PATH=${ZLIB_INCLUDE_DIR}
  -DZLIB_LIBRARY:FILEPATH=${ZLIB_LIBRARY}
  -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS} )

if(MSVC)
  include_project_vars(MINIZIP "minizip")
else()
  include_project_vars(MINIZIP "libminizip")
endif()
