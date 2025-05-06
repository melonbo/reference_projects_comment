# 设置目标系统名字
set(CMAKE_SYSTEM_NAME Linux)
# 设置目标处理器架构
set(CMAKE_SYSTEM_PROCESSOR arm)
# set(CMAKE_ANDROID_STL_TYPE gnustl_static)

set(CMAKE_PREFIX_PATH ${TOOLCHAIN_DIR}/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/cmake)
set(OE_QMAKE_PATH_EXTERNAL_HOST_BINS /opt/fsl-imx-fb/4.9.88-2.0.0/sysroots/x86_64-pokysdk-linux/usr/bin/qt5/)

set(TOOLCHAIN_DIR /opt/fsl-imx-fb/4.9.88-2.0.0/sysroots)
set(CMAKE_SYSROOT ${TOOLCHAIN_DIR}/cortexa9hf-neon-poky-linux-gnueabi)

set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++)

# 为编译器添加编译选项
set(CMAKE_C_FLAGS "-march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9")
set(CMAKE_CXX_FLAGS "-march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#set(Qt5_DIR ${TOOLCHAIN_DIR}/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/cmake/Qt5)
