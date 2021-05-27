set(CMAKE_CXX_STANDARD 11)

project(LetsCam)

add_library(camera STATIC src/camera.cpp)

target_include_directories(camera PUBLIC ${PROJECT_SOURCE_DIR}/include)

add_executable(main src/main.cpp)

target_include_directories(main PRIVATE $ENV{HOME}/Ascend/driver/)
target_link_directories(main PRIVATE $ENV{HOME}/Ascend/driver/)

target_include_directories(main PRIVATE $ENV{HOME}/ascend_ddk/arm/lib/)
target_link_directories(main PRIVATE $ENV{HOME}/ascend_ddk/arm/lib/)

target_link_libraries(main camera media_mini slog c_sec pthread)

