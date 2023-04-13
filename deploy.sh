#!/usr/bin/env bash
PLATFORM="android"
RED="\033[0;31m"
GREEN='\033[0;32m'
END="\033[0m"
if [ ! -z $1 ];then
    PLATFORM=$1
    ARCH="armeabi-v7a"
    if [ PLATFORM == "all"];then
	ARCH="all"
fi
    if [ ! -z $2 ];then
	ARCH_INPUT="$2"
	fi
    fi
prepare () {
    # make sure we have all necessary programs
    if ! command -v cmake &> /dev/null
    then
        echo -e "${RED}error: cmake is not installed!"
        exit 1
    fi
    if ! command -v make &> /dev/null
    then
        echo -e "${RED}error: make is not installed!"
        exit 1
    fi
    if ! command -v xmllint &> /dev/null
    then
        echo -e "${RED}error: xmllint is not installed!"
        exit 1
    fi
    if [! command -v apksigner &> /dev/null] && [$PLATFORM == android]
    then
        echo -e "${RED}error: cannot find apksigner"
        exit 1
    fi
    if [! find $prefix/binarycreator.exe] && [$PLATFORM == windows]
    then
        echo -e "${RED}error: cannot find Qt installer framework binary for windows. Install it from msys2 repo"
        exit 1
    fi
    version="$(rg 'HPS VERSION' CMakeLists.txt | sed 's/project(HPS VERSION //;s/.$//' | tr . _)"
    }
android_configure () {
    DIR="build_android"
    SDK_DIR="/opt/android-sdk"
    NDK_DIR="${SDK_DIR}/ndk/23.1.7779620"
    QT_VERSION="5.15.1"
    QT_DIR="$HOME/Qt/$QT_VERSION/android"
    prepare
    #for some reason you cannot build twice from the same directory, we have to remove it
    if [ -d $DIR ];then
        echo "build dir exists, removing"
        rm -r $DIR
    fi
    ARCH_STL="arm-linux-androideabi"
	ARCH_INPUT="$1"
	if [ $ARCH_INPUT == "arm64" ] || [ $ARCH_INPUT == "arm64-v8a" ];then
            ARCH="arm64-v8a"
            ARCH_STL="aarch64-linux-android"
	elif [ $ARCH_INPUT == "armv7" ] || [ $ARCH_INPUT == "armeabi-v7a" ];then
            ARCH="armeabi-v7a"
            ARCH_STL="arm-linux-androideabi"
	elif [ $ARCH_INPUT == "x86_64" ];then
            ARCH="x86_64"
            ARCH_STL="x86_64-linux-android"
	else
            echo -e "${RED}error: unknown architecture"
            exit 1
	fi
    mkdir $DIR
    cd $DIR
}
android_build () {
    # configure project with CMake android toolchain
    cmake -DCMAKE_BUILD_TYPE=Release \
          -DCMAKE_PREFIX_PATH=$QT_DIR/lib/cmake/Qt5Core \
          -DCMAKE_C_COMPILER=$NDK_DIR/toolchains/llvm/prebuilt/linux-x86_64/bin/clang \
          -DCMAKE_CXX_COMPILER=$NDK_DIR/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ \
          -DANDROID_NATIVE_API_LEVEL=16 \
          -DANDROID_NDK=$NDK_DIR \
          -DANDROID_ABI=$1 \
          -DANDROID_SDK=$SDK_DIR \
          -DANDROID_STL=c++_shared \
          -DCMAKE_FIND_ROOT_PATH=$QT_DIR \
          -DCMAKE_TOOLCHAIN_FILE=/usr/share/ECM/toolchain/Android.cmake \
          -DQTANDROID_EXPORTED_TARGET=HPS \
          -DANDROID_APK_DIR=$HOME/hps_app_rework/src/android \
          -DECM_ANDROID_STL_ARCH=$2 ..
    # compile and deploy
    make create-apk-HPS
    #sign
    apksigner sign -ks $HOME/Pulpit/my-release-key.keystore --ks-pass pass:$password HPS_build_apk/HPS-$ARCH.apk
    cp HPS_build_apk/HPS-$ARCH.apk HPS_build_apk/HPS-$ARCH-$version.apk
    mkdir signed
    cp HPS_build_apk/HPS-$ARCH-$version.apk $HOME/signed/
    cd ..
}
if [ $PLATFORM == "android" ];then
    android_makeAll "$2" 
fi
android_makeAll () {
    android_configure "$1"
    android_build "$ARCH" "$ARCH_STL"
    }
windows_configure () {
    DIR="build_windows"
    TOOLCHAIN_FILE="../mingw-w64-x86_64.cmake"
    if [ -d $DIR ];then
        echo "build dir exists, removing"
        rm -r $DIR
    fi
    mkdir $DIR
    cd $DIR
    cmake -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE ..
}
windows_build () {
    make
    echo "built successfully"
    }
windows_deploy () {
    PLUGIN_PREFIX=/usr/$ARCH-w64-mingw32/lib/qt/plugins/
    QML_PREFIX=/usr/$ARCH-w64-mingw32/lib/qt/qml/
    mingw_libs=(
	"libstdc++-6.dll"
	"libgcc_s_seh-1.dll"
	"libwinpthread-1.dll"
	"libssp-0.dll"
	"zlib1.dll"
	"libpng16-16.dll"
	"libjpeg-8.dll"
	"libintl-8.dll"
	"libharfbuzz-0.dll"
	"libpcre2-8-0.dll"
	"libpcre2-16-0.dll"
	"libiconv-2.dll"
	"libgraphite2.dll"
	"libfreetype-6.dll"
	"libglib-2.0-0.dll"
	"libbz2-1.dll"
	"libbrotlicommon.dll"
	"libbrotlidec.dll"
	"libsqlite3-0.dll"
	)
    qt_libs=(
	"Qt5Core.dll" 
	"Qt5Gui.dll"
	"Qt5Network.dll"
	"Qt5Qml.dll"
	"Qt5QmlModels.dll"
	"Qt5QmlWorkerScript.dll"
	"Qt5Widgets.dll"
	"Qt5Quick.dll"
	"Qt5QuickTemplates2.dll"
	"Qt5QuickControls2.dll"
	"Qt5Sql.dll"
	"Qt5Svg.dll"
	"Qt5Multimedia.dll"
	"Qt5MultimediaQuick.dll"
	)
    qml_libs=(
	"Qt"
	"QtMultimedia"
	"QtQml"
	"QtQuick"
	"QtQuick.2"
	)
    qt_plugins=(
	"imageformats/qjpeg.dll"
	"imageformats/qsvg.dll"
	"sqldrivers/qsqlite.dll"
	"mediaservice/dsengine.dll"
	"mediaservice/qtmedia_audioengine.dll"
	)
    cd bin
    pwd
    echo -e "${GREEN}Copying mingw runtime and QT dependencies...${END}"
    for i in "${mingw_libs[@]}"
    do
	echo "copying $i ..."
	cp $PREFIX/$i . 
	done
    echo -e "${GREEN}Copying QT libraries...${END}"
    for i in "${qt_libs[@]}"
    do
	echo "copying $i ..."
	cp $PREFIX/$i . 
	done
    echo -e "${GREEN}Copying qt windows platform plugin...${END}"
    mkdir platforms
    cd platforms
    cp $PLUGIN_PREFIX/platforms/qwindows.dll .
    cd ..
    mkdir imageformats
    mkdir sqldrivers
    mkdir mediaservice
    echo -e "${GREEN}Copying qt multimedia plugins...${END}"
    for i in "${qt_plugins[@]}"
    do
	echo "copying $i ..."
	cp -r $PLUGIN_PREFIX/$i $i 
	done
    for i in "${qml_libs[@]}"
    do
	echo "copying $i ..."
	cp -r $QML_PREFIX/$i . 
	done
    }
windows_createInstaller () {
    cd ..
    cp -r ../installer/config .
    cp -r ../installer/packages .
    cp -r bin/* packages/pl.hpsgrupa.niezbednik/data/
    $PREFIX/binarycreator.exe -c config/config.xml -p packages HPS-${version}.exe
    cp HPS-${version}.exe $HOME/signed/
    cd ..
    }
if [ $PLATFORM == "windows" ];then
    windows_makeAll
fi
windows_makeAll () {
    ARCH="x86_64"
    PREFIX=/usr/$ARCH-w64-mingw32/bin/
    prepare
    windows_configure
    windows_build
    windows_deploy
    windows_createInstaller
    }
if [ $PLATFORM == "all" ];then
    echo -n Password: 
    read -s password
    echo
    arch_list=(
	"armv7"
	"arm64"
	"x86_64"
	)
    windows_makeAll
    for i in "${arch_list[@]}"
    do
        android_makeAll $i
	done
fi

