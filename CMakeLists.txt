cmake_minimum_required(VERSION 3.16)

project(HPS VERSION 1.1.2)
set(REQUIRED_QT_VERSION 5.15.0)

SET(CMAKE_CXX_STANDARD 17)

################# Disallow in-source build #################

if("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}")
   message(FATAL_ERROR "aplikacja HPS wymaga kompilacji poza katalogiem zrodlowym. Utworz taki i wpisz tam 'cmake sciezka_do_kodu [opcje]'.")
endif()
find_package(ECM 5.90.0 NO_MODULE)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${ECM_MODULE_PATH})

# Make CPack available to easy generate binary packages
include(CPack)
include(FeatureSummary)

include(KDEInstallDirs5)
find_package(Qt${QT_MAJOR_VERSION} ${REQUIRED_QT_VERSION} REQUIRED NO_MODULE COMPONENTS Core Quick Gui Svg QuickControls2 Sql )

if (QT_MAJOR_VERSION EQUAL 5)
find_package(Qt5 ${REQUIRED_QT_VERSION} REQUIRED NO_MODULE COMPONENTS Multimedia)
endif()

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

################# set KDE specific information #################

set_package_properties(ECM PROPERTIES TYPE REQUIRED DESCRIPTION "Extra CMake Modules." URL "https://projects.kde.org/projects/kdesupport/extra-cmake-modules")

# option(ENABLE_QML_PROFILING "Enable QML profiler support" ON)


include(KDECMakeSettings)
include(KDECompilerSettings NO_POLICY_SCOPE)
include(ECMPoQmTools)
include(ECMFindQmlModule)

if (QT_MAJOR_VERSION EQUAL 5)
 if(CMAKE_SYSTEM_NAME STREQUAL "Android")
     find_package(Qt5AndroidExtras ${REQUIRED_QT_VERSION} REQUIRED)
 endif()
endif()

ecm_find_qmlmodule(QtGraphicalEffects 1.0)

add_definitions(-DQT_NO_URL_CAST_FROM_STRING)

add_subdirectory(src)

if (IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/po")
    ecm_install_po_files_as_qm(po)
endif()

feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)

