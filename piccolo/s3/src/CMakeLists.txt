AUX_SOURCE_DIRECTORY(./ SRC_FILES)
set(CMAKE_CXX_FLAGS -O3)
add_library(src ${SRC_FILES})
