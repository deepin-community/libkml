ExternalProject_Add(ZLIB
  PREFIX ZLIB
  URL "http://zlib.net/zlib-1.2.8.tar.gz"
  URL_MD5 44d667c142d7cda120332623eab69f40
  BINARY_DIR ${CMAKE_BINARY_DIR}/ZLIB/build
  DOWNLOAD_DIR ${DOWNLOAD_LOCATION}
  CMAKE_CACHE_ARGS
  -DCMAKE_INSTALL_PREFIX:PATH=${INSTALL_DIR}
  -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
  -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS})

 if(MSVC)
  if(BUILD_SHARED_LIBS)
    include_project_vars(ZLIB "zlib")
  else()
    include_project_vars(ZLIB "zlibstatic")
  endif()
else()
  include_project_vars(ZLIB "libz")
endif()
