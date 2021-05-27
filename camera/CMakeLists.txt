set(CMAKE_CXX_STANDARD 11)

add_executable(main main.cpp)

target_include_directories(main PRIVATE $ENV{HOME}/Ascend/driver/)
target_link_directories(main PRIVATE $ENV{HOME}/Ascend/driver/)

target_include_directories(main PRIVATE $ENV{HOME}/ascend_ddk/arm/lib/)
target_link_directories(main PRIVATE $ENV{HOME}/ascend_ddk/arm/lib/)

target_link_libraries(main media_mini slog c_sec pthread)

