# arm-linux-gnueabihf.cmake
set(CMAKE_SYSTEM_NAME Linux)          # 目标系统
set(CMAKE_SYSTEM_PROCESSOR arm)      # 目标架构

# 指定交叉编译器路径
set(CMAKE_C_COMPILER /home/rpdzkj/rk3288-linux/buildroot/output/rockchip_rk3288/host/usr/bin/arm-buildroot-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER /home/rpdzkj/rk3288-linux/buildroot/output/rockchip_rk3288/host/usr/bin/arm-buildroot-linux-gnueabihf-g++)

# 指定目标系统的根目录（sysroot）
set(CMAKE_SYSROOT /home/rpdzkj/rk3288-linux/buildroot/output/rockchip_rk3288/host/arm-buildroot-linux-gnueabihf/sysroot/)

# 设置查找库和头文件的路径
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)      # 不在 sysroot 中查找可执行程序
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)       # 只在 sysroot 中查找库
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)       # 只在 sysroot 中查找头文件
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)       # 只在 sysroot 中查找 CMake 包
