#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "event_core_shared" for configuration "MinSizeRel"
set_property(TARGET event_core_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(event_core_shared PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib64/libevent_core.so"
  IMPORTED_SONAME_MINSIZEREL "libevent_core.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_core_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_core_shared "${_IMPORT_PREFIX}/lib64/libevent_core.so" )

# Import target "event_extra_shared" for configuration "MinSizeRel"
set_property(TARGET event_extra_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(event_extra_shared PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib64/libevent_extra.so"
  IMPORTED_SONAME_MINSIZEREL "libevent_extra.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_extra_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_extra_shared "${_IMPORT_PREFIX}/lib64/libevent_extra.so" )

# Import target "event_pthreads_shared" for configuration "MinSizeRel"
set_property(TARGET event_pthreads_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(event_pthreads_shared PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib64/libevent_pthreads.so"
  IMPORTED_SONAME_MINSIZEREL "libevent_pthreads.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_pthreads_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_pthreads_shared "${_IMPORT_PREFIX}/lib64/libevent_pthreads.so" )

# Import target "event_shared" for configuration "MinSizeRel"
set_property(TARGET event_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(event_shared PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib64/libevent.so"
  IMPORTED_SONAME_MINSIZEREL "libevent.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_shared "${_IMPORT_PREFIX}/lib64/libevent.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
