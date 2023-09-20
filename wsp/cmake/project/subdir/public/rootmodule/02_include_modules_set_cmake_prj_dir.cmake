#   *******************************************************************************
#   
#   mpfw / fw2 - Multi Platform FirmWare FrameWork 
#       library that contains the "main" entry point and, 
#       eventualy, application code that is platform dependent
#   Copyright (C) (2023) Marco Dau
#   
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published
#   by the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#   
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#   
#   You can contact me by the following email address
#   marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
#   
#   *******************************************************************************
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################

include(libs/mpfw_code_libs_sdk_${WP_PLATFORM_STR}/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_core/common/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_core_core/wsp/cmake/project/public/01_set_root_dirs.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_resources/common/wsp/cmake/project/public/01_set_root_dirs.cmake )
## include(apps/mpfw_code_apps_${APP_NAME}/wsp/cmake/project/public/set_root_dirs.cmake                        )
## ##
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02a_set_root_dirs.cmake )


include(libs/mpfw_code_libs_sdk_${WP_PLATFORM_STR}/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_core/common/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_core_core/wsp/cmake/project/public/set_prj_dir.cmake )
include(libs/mpfw_code_libs_fw2_wrapper_resources/common/wsp/cmake/project/public/set_prj_dir.cmake )
## include(apps/mpfw_code_apps_${APP_NAME}/wsp/cmake/project/public/set_prj_dir.cmake                          )
## ##
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02b_set_prj_dir.cmake )

include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02c_set_src_dir.cmake )
include(${MAIN_CMAKE_PUBLIC_ROOTMODULE_RPATH}/02d_include_set_conf_dirs.cmake )
