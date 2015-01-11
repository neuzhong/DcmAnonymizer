#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "gdcmCommon" for configuration "Debug"
SET_PROPERTY(TARGET gdcmCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmCommon PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmCommon.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmmd5"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmCommon.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmCommon )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmCommon "${_IMPORT_PREFIX}/lib/gdcmCommon.lib" "${_IMPORT_PREFIX}/bin/gdcmCommon.dll" )

# Import target "gdcmDICT" for configuration "Debug"
SET_PROPERTY(TARGET gdcmDICT APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmDICT PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmDICT.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmDSED;gdcmIOD"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmDICT.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmDICT )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmDICT "${_IMPORT_PREFIX}/lib/gdcmDICT.lib" "${_IMPORT_PREFIX}/bin/gdcmDICT.dll" )

# Import target "gdcmDSED" for configuration "Debug"
SET_PROPERTY(TARGET gdcmDSED APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmDSED PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmDSED.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmzlib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmDSED.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmDSED )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmDSED "${_IMPORT_PREFIX}/lib/gdcmDSED.lib" "${_IMPORT_PREFIX}/bin/gdcmDSED.dll" )

# Import target "gdcmIOD" for configuration "Debug"
SET_PROPERTY(TARGET gdcmIOD APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmIOD PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmIOD.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmexpat"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmDSED;gdcmCommon"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmIOD.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmIOD )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmIOD "${_IMPORT_PREFIX}/lib/gdcmIOD.lib" "${_IMPORT_PREFIX}/bin/gdcmIOD.dll" )

# Import target "gdcmMSFF" for configuration "Debug"
SET_PROPERTY(TARGET gdcmMSFF APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmMSFF PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmMSFF.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmjpeg8;gdcmjpeg12;gdcmjpeg16;gdcmopenjpeg;gdcmcharls"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "gdcmDSED;gdcmDICT;gdcmIOD"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmMSFF.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmMSFF )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmMSFF "${_IMPORT_PREFIX}/lib/gdcmMSFF.lib" "${_IMPORT_PREFIX}/bin/gdcmMSFF.dll" )

# Import target "gdcmMEXD" for configuration "Debug"
SET_PROPERTY(TARGET gdcmMEXD APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmMEXD PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmMEXD.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "gdcmMSFF;gdcmDICT;gdcmDSED;gdcmIOD;socketxx"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmMEXD.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmMEXD )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmMEXD "${_IMPORT_PREFIX}/lib/gdcmMEXD.lib" "${_IMPORT_PREFIX}/bin/gdcmMEXD.dll" )

# Import target "gdcmjpeg8" for configuration "Debug"
SET_PROPERTY(TARGET gdcmjpeg8 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmjpeg8 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmjpeg8.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmjpeg8.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg8 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg8 "${_IMPORT_PREFIX}/lib/gdcmjpeg8.lib" "${_IMPORT_PREFIX}/bin/gdcmjpeg8.dll" )

# Import target "gdcmjpeg12" for configuration "Debug"
SET_PROPERTY(TARGET gdcmjpeg12 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmjpeg12 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmjpeg12.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmjpeg12.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg12 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg12 "${_IMPORT_PREFIX}/lib/gdcmjpeg12.lib" "${_IMPORT_PREFIX}/bin/gdcmjpeg12.dll" )

# Import target "gdcmjpeg16" for configuration "Debug"
SET_PROPERTY(TARGET gdcmjpeg16 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmjpeg16 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmjpeg16.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmjpeg16.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmjpeg16 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmjpeg16 "${_IMPORT_PREFIX}/lib/gdcmjpeg16.lib" "${_IMPORT_PREFIX}/bin/gdcmjpeg16.dll" )

# Import target "gdcmexpat" for configuration "Debug"
SET_PROPERTY(TARGET gdcmexpat APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmexpat PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmexpat.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmexpat.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmexpat )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmexpat "${_IMPORT_PREFIX}/lib/gdcmexpat.lib" "${_IMPORT_PREFIX}/bin/gdcmexpat.dll" )

# Import target "gdcmopenjpeg" for configuration "Debug"
SET_PROPERTY(TARGET gdcmopenjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmopenjpeg PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmopenjpeg.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmopenjpeg.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmopenjpeg )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmopenjpeg "${_IMPORT_PREFIX}/lib/gdcmopenjpeg.lib" "${_IMPORT_PREFIX}/bin/gdcmopenjpeg.dll" )

# Import target "gdcmcharls" for configuration "Debug"
SET_PROPERTY(TARGET gdcmcharls APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmcharls PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmcharls.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmcharls.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmcharls )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmcharls "${_IMPORT_PREFIX}/lib/gdcmcharls.lib" "${_IMPORT_PREFIX}/bin/gdcmcharls.dll" )

# Import target "gdcmmd5" for configuration "Debug"
SET_PROPERTY(TARGET gdcmmd5 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmmd5 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmmd5.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmmd5.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmmd5 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmmd5 "${_IMPORT_PREFIX}/lib/gdcmmd5.lib" "${_IMPORT_PREFIX}/bin/gdcmmd5.dll" )

# Import target "gdcmzlib" for configuration "Debug"
SET_PROPERTY(TARGET gdcmzlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(gdcmzlib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gdcmzlib.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gdcmzlib.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS gdcmzlib )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_gdcmzlib "${_IMPORT_PREFIX}/lib/gdcmzlib.lib" "${_IMPORT_PREFIX}/bin/gdcmzlib.dll" )

# Import target "socketxx" for configuration "Debug"
SET_PROPERTY(TARGET socketxx APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(socketxx PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/socketxx.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/socketxx.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS socketxx )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_socketxx "${_IMPORT_PREFIX}/lib/socketxx.lib" "${_IMPORT_PREFIX}/bin/socketxx.dll" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
