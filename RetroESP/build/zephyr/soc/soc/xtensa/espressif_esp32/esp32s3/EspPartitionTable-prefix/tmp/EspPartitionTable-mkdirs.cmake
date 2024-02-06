# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/dinordi/zephyrproject/modules/hal/espressif/components/partition_table"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/esp-idf/build"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/tmp"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/src"
  "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/src/EspPartitionTable-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/dinordi/zephyrproject/zephyr/samples/btcontrollerDinordi/build/zephyr/soc/soc/xtensa/espressif_esp32/esp32s3/EspPartitionTable-prefix/src/EspPartitionTable-stamp${cfgdir}") # cfgdir has leading slash
endif()
