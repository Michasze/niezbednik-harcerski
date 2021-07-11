# Niezbędnik Harcerski
Application made by Polish scouts Facebook group "Harcerze - Poznajemy Się" containing articles, guides and ciphers generator.

## Build on Android:
Make sure to install **android-sdk**, **android-ndk** and **Qt5** for your android device architecture.

You will also need KDE **Kirigami** Framework.

Before configuration step set the following variables:

export ANDROID_SDK_ROOT=/path/to/android-sdk

export ANDROID_NDK=/path/to/android-ndk

On Linux run:
``` sh
cmake -DCMAKE_PREFIX_PATH=/path/to/Qt/5.15.1/android/lib/cmake/Qt5Core -DCMAKE_C_COMPILER=/path/to/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -DCMAKE_CXX_COMPILER=/path/to/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -DANDROID_NATIVE_API_LEVEL=16 -DANDROID_NDK=/path/to/android-ndk/ -DANDROID_ABI=ABI  -DANDROID_SDK=/path/to/android-sdk -DANDROID_STL=c++_shared -DCMAKE_FIND_ROOT_PATH=/path/to/Qt/5.15.1/android/ -DCMAKE_TOOLCHAIN_FILE=/usr/share/ECM/toolchain/Android.cmake -DQTANDROID_EXPORTED_TARGET=HPS -DANDROID_APK_DIR=/path/to/niezbednik-harcerski/src/android  ..
```
where ABI is your Android device architecture.

To create Android package run
``` sh
make create-apk-HPS
```
