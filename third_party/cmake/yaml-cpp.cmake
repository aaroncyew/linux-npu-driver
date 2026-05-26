#
# Copyright (C) 2022-2026 Intel Corporation
#
# SPDX-License-Identifier: MIT
#

# Try to find system-installed yaml-cpp package
# Package names vary by distribution:
# - Fedora/RHEL/openSUSE Tumbleweed: yaml-cpp-devel
# - Ubuntu/Debian: libyaml-cpp-dev
find_package(yaml-cpp QUIET)

if(NOT yaml-cpp_FOUND)
  message(STATUS "System yaml-cpp not found, building from submodule")
  set(YAML_CPP_INSTALL OFF)
  set(BUILD_SHARED_LIBS OFF)
  add_subdirectory(yaml-cpp EXCLUDE_FROM_ALL)
endif()

