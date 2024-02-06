# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/dinordi/zephyrproject/modules/hal/espressif/components/bootloader/subproject"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/build/bootloader"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/tmp"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/src/EspIdfBootloader-stamp"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/src"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/src/EspIdfBootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/src/EspIdfBootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/src/EspIdfBootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
