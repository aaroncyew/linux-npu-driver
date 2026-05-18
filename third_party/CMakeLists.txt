#
# Copyright (C) 2022-2024 Intel Corporation
#
# SPDX-License-Identifier: MIT
#

# Ignore compiler warnings from third party libraries
add_compile_options(-Wno-error -include cstdint)

include(cmake/npu_compiler_elf.cmake)
include(cmake/level-zero.cmake)
include(cmake/level-zero-npu-extensions.cmake)
if (ENABLE_NPU_PERFETTO_BUILD)
  include(cmake/perfetto.cmake)
endif()

include(cmake/googletest.cmake)
include(cmake/yaml-cpp.cmake)

