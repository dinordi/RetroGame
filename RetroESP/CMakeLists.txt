# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)

set(BOARD esp32s3_devkitm)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(RetroGame)

set(app_sources 
    src/main.cpp 
    # src/adc.cpp
    src/button.cpp
    src/fpga.cpp
)
FILE(GLOB app_sources src/*.cpp)
target_sources(app PRIVATE ${app_sources})
