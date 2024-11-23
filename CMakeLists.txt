cmake_minimum_required(VERSION 3.5)
project(my_raylib_game C)
set(CMAKE_C_STANDARD 99)

# Adding Raylib
include(FetchContent)
set(FETCHCONTENT_QUIET FALSE)
set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE) # don't build the supplied examples
set(BUILD_GAMES    OFF CACHE BOOL "" FORCE) # don't build the supplied example games

FetchContent_Declare(
    raylib
    # GIT_REPOSITORY "https://github.com/raysan5/raylib.git"
    # GIT_TAG "master"
    # GIT_PROGRESS TRUE
    URL https://github.com/raysan5/raylib/archive/refs/tags/5.5.tar.gz
)

FetchContent_MakeAvailable(raylib)

# Adding our source files
file(GLOB_RECURSE PROJECT_SOURCES CONFIGURE_DEPENDS "${CMAKE_CURRENT_LIST_DIR}/src/*.c") # Define PROJECT_SOURCES as a list of all source files
set(PROJECT_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/src/") # Define PROJECT_INCLUDE to be the path to the include directory of the project

# build for web
if (EMSCRIPTEN)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -sUSE_GLFW=3  -sASYNCIFY --shell-file=${CMAKE_CURRENT_SOURCE_DIR}/src/index.html --preload-file=${CMAKE_CURRENT_SOURCE_DIR}/src/assets/@src/assets/")
  set(CMAKE_LINK_FLAGS "${CMAKE_LINK_FLAGS} -sASSERTIONS=1 -sWASM=1")
  set(CMAKE_EXECUTABLE_SUFFIX ".html")
endif ()

# Declaring our executable
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCES})
target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_INCLUDE})
target_link_libraries(${PROJECT_NAME} PRIVATE raylib)
