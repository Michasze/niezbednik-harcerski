# if (ENABLE_QML_PROFILING)
#    add_definitions(-DQT_QML_DEBUG)
# endif()

set(HPS_SRCS
    main.cpp
    Cipher.cpp
    Decipher.cpp
    Clipboard.cpp
    InfoData.cpp
    HPSSettings.cpp
    Spiewnik.cpp
    HPSFilter.cpp
    HPSDatabase.cpp
    HPSCardModel.cpp
    HPSTranslate.cpp
    )

if (QT_MAJOR_VERSION EQUAL 6)
qt6_add_resources(RESOURCES resources.qrc)
else()
#qt5_create_translation(QM_FILES ${CMAKE_SOURCE_DIR}/src/data/contents/ui translation_ua.ts)
#qt5_add_translation(QM_FILES)
qt5_add_resources(RESOURCES resources.qrc)
endif()
remove_definitions(
    -DQT_NO_CAST_FROM_ASCII
)

if (CMAKE_SYSTEM_NAME STREQUAL "Android")
    find_package(KF5Kirigami2 ${KF5_DEP_VERSION})
    set(HPS_EXTRA_LIBS Qt${QT_MAJOR_VERSION}::AndroidExtras KF5::Kirigami2)
endif()

find_program(kpackagetool_cmd kpackagetool5)
if (kpackagetool_cmd)
    set(component com.hps.HPS)
    set(APPDATAFILE "${CMAKE_CURRENT_BINARY_DIR}/${component}.appdata.xml")

    message(STATUS "${kpackagetool_cmd} --appstream-metainfo ${CMAKE_CURRENT_SOURCE_DIR}/data --appstream-metainfo-output ${APPDATAFILE}")
    execute_process(
        COMMAND ${kpackagetool_cmd} --appstream-metainfo ${CMAKE_CURRENT_SOURCE_DIR}/data --appstream-metainfo-output ${APPDATAFILE}
        ERROR_VARIABLE appstreamerror
        RESULT_VARIABLE result)
    if (NOT result EQUAL 0)
        message(WARNING "couldn't generate metainfo for ${component}: ${appstreamerror}")
    else()
        if(appstreamerror)
            message(WARNING "warnings during generation of metainfo for ${component}: ${appstreamerror}")
        endif()

        # OPTIONAL because desktop files can be NoDisplay so they render no XML.
        install(FILES ${APPDATAFILE} DESTINATION ${KDE_INSTALL_METAINFODIR} OPTIONAL)
    endif()
else()
    message(WARNING "KPackage components should be specified in reverse domain notation. Appstream information won't be generated for ${component}.")
endif()

add_executable(HPS ${HPS_SRCS} ${RESOURCES})
target_link_libraries(HPS Qt${QT_MAJOR_VERSION}::Core  Qt${QT_MAJOR_VERSION}::Qml Qt${QT_MAJOR_VERSION}::Quick Qt${QT_MAJOR_VERSION}::Svg Qt${QT_MAJOR_VERSION}::QuickControls2 Qt${QT_MAJOR_VERSION}::Multimedia Qt${QT_MAJOR_VERSION}::Sql ${HPS_EXTRA_LIBS})

if (ANDROID)
    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/android/version.gradle.in ${CMAKE_BINARY_DIR}/version.gradle)
endif()
                
install(TARGETS HPS ${KF5_INSTALL_TARGETS_DEFAULT_ARGS})
install(FILES data/metadata.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} RENAME com.hps.HPS.desktop)
install(FILES data/com.hps.HPS.svg DESTINATION ${ICON_INSTALL_DIR}/hicolor/scalable/apps)

if (CMAKE_SYSTEM_NAME STREQUAL "Android")
    find_package(KF5Kirigami2 REQUIRED)
endif()
