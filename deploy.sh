#!/usr/bin/env bash
PLATFORM="android"
RED="\033[0;31m"
if [ $PLATFORM == "android" ];then
    DIR="build_android"
    SDK_DIR="/opt/android-sdk"
    NDK_DIR="${SDK_DIR}/ndk/23.1.7779620"
    QT_VERSION="5.15.1"
    QT_DIR="$HOME/Qt/$QT_VERSION/android"
    ARCH="armeabi-v7a"
    #for some reason you cannot build twice from the same directory, we have to remove it
    if [ -d $DIR ];then
        echo "build dir exists, removing"
        rm -r $DIR
    fi
    ARCH_STL="arm-linux-androideabi"
    if [ ! -z $1 ];then
    ARCH_INPUT="$1"
    if [ $ARCH_INPUT == "arm64" ] || [ $ARCH_INPUT == "arm64-v8a" ];then
        ARCH="arm64-v8a"
        ARCH_STL="aarch64-linux-android"
    elif [ $ARCH_INPUT == "armv7" ] || [ $ARCH_INPUT == "armeabi-v7a" ];then
        ARCH="armeabi-v7a"
        ARCH_STL="arm-linux-androideabi"
    else
        echo -e "${RED}error: unknown architecture"
        exit 1
    fi
    fi
    mkdir $DIR
    cd $DIR
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
    if ! command -v apksigner &> /dev/null
    then
        echo -e "${RED}error: cannot find apksigner"
        exit 1
    fi
    # configure project with CMake android toolchain
    cmake -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_PREFIX_PATH=$QT_DIR/lib/cmake/Qt5Core \
        -DCMAKE_C_COMPILER=$NDK_DIR/toolchains/llvm/prebuilt/linux-x86_64/bin/clang \
        -DCMAKE_CXX_COMPILER=$NDK_DIR/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ \
        -DANDROID_NATIVE_API_LEVEL=16 \
        -DANDROID_NDK=$NDK_DIR \
        -DANDROID_ABI=$ARCH \
        -DANDROID_SDK=$SDK_DIR \
        -DANDROID_STL=c++_shared \
        -DCMAKE_FIND_ROOT_PATH=$QT_DIR \
        -DCMAKE_TOOLCHAIN_FILE=/usr/share/ECM/toolchain/Android.cmake \
        -DQTANDROID_EXPORTED_TARGET=HPS \
        -DANDROID_APK_DIR=$HOME/hps_app_rework/src/android \
        -DECM_ANDROID_STL_ARCH=$ARCH_STL ..
    # compile and deploy
    make create-apk-HPS
    #sign
    apksigner sign -ks $HOME/Pulpit/my-release-key.keystore HPS_build_apk/HPS-$ARCH.apk
    mkdir signed
    cp HPS_build_apk/HPS-$ARCH.apk signed/
    cp HPS_build_apk/HPS-$ARCH.apk $HOME/signed/

fi
