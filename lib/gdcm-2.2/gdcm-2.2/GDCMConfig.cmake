#-----------------------------------------------------------------------------
#
# GDCMConfig.cmake - CMake configuration file for external projects.
#
# This file is configured by GDCM and used by the UseGDCM.cmake
# module to load GDCM's settings for an external project.

# The GDCM version number.
SET(GDCM_MAJOR_VERSION "2")
SET(GDCM_MINOR_VERSION "2")
SET(GDCM_BUILD_VERSION "0")

# The libraries.
SET(GDCM_LIBRARIES "")

# The CMake macros dir.
SET(GDCM_CMAKE_DIR "")

# The configuration options.
SET(GDCM_BUILD_SHARED_LIBS "ON")
SET(GDCM_USE_VTK "OFF")

# The "use" file.
SET(GDCM_USE_FILE "")

# The VTK options.
IF(GDCM_USE_VTK)
  SET(GDCM_VTK_DIR "")
ENDIF(GDCM_USE_VTK)

get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
if(EXISTS ${SELF_DIR}/GDCMTargets.cmake)
  # This is an install tree
  include(${SELF_DIR}/GDCMTargets.cmake)
  get_filename_component(GDCM_INCLUDE_ROOT "${SELF_DIR}/../../include/gdcm-2.2" ABSOLUTE)
  set(GDCM_INCLUDE_DIRS ${GDCM_INCLUDE_ROOT})

else(EXISTS ${SELF_DIR}/GDCMTargets.cmake)
  if(EXISTS ${SELF_DIR}/GDCMExports.cmake)
    # This is a build tree
    SET( GDCM_INCLUDE_DIRS D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/Common;D:/ThirdParty/gdcm22/Source/Common;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/DataStructureAndEncodingDefinition;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/MediaStorageAndFileFormat;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/MessageExchangeDefinition;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/DataDictionary;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Source/InformationObjectDefinition;D:/Download/gdcm-2.2.0/gdcm-2.2.0/Utilities/C99)

    include(${SELF_DIR}/GDCMExports.cmake)

  else(EXISTS ${SELF_DIR}/GDCMExports.cmake)
    message(FATAL_ERROR "ooops")
  endif(EXISTS ${SELF_DIR}/GDCMExports.cmake)
endif(EXISTS ${SELF_DIR}/GDCMTargets.cmake)

set(GDCM_USE_FILE ${SELF_DIR}/UseGDCM.cmake)

SET(GDCM_LIBRARY_DIRS D:/ThirdParty/gdcm22/bin/$(OutDir))

# Backward compatible part:
SET(GDCM_FOUND       TRUE)
