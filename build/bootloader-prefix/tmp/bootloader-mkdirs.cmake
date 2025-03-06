# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/expressif/Espressif/frameworks/esp-idf-v5.3/components/bootloader/subproject"
  "C:/expressif/code/led/build/bootloader"
  "C:/expressif/code/led/build/bootloader-prefix"
  "C:/expressif/code/led/build/bootloader-prefix/tmp"
  "C:/expressif/code/led/build/bootloader-prefix/src/bootloader-stamp"
  "C:/expressif/code/led/build/bootloader-prefix/src"
  "C:/expressif/code/led/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/expressif/code/led/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/expressif/code/led/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
