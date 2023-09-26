# build-ocgcore
编译适用于 `Android`、`Linux`、`macOS`、`Windows` 平台的 [libocgcore](https://github.com/Fluorohydride/ygopro-core.git)

## 编译Android版本
需在对应平台下载 [Android-ndk](https://github.com/android/ndk/wiki/Unsupported-Downloads)

~~~sh
> cd build/android
> ndk-build -j4
~~~

## 编译Linux版本
需在Linux平台，安装 `gcc` 或 `clang`

~~~sh
> cd build/linux
> make -j4
~~~

## 在Linux平台编译适用于macOS的版本
需在Linux平台安装 [osxcross](https://github.com/tpoechtrager/osxcross)

~~~sh
> cd build/macosx
> CC=x86_64-apple-darwin20-clang CXX=x86_64-apple-darwin20-clang++ AR=x86_64-apple-darwin20-ar make -j4
~~~
