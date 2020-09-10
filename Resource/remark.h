//
//  remark.h
//  objc
//
//  Created by 泽泽 on 2020/9/10.
//

#ifndef remark_h
#define remark_h

/**
 clang -rewrite-objc main.m -o main.cpp 把目标文件编译成c++文件 UIKit报错问题
 clang -rewrite-objc -fobjc-arc -fobjc-runtime=ios-13.0.0 -isysroot / Applications/Xcode.app/Contents/Developer/Platforms/ iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator13.0.sdk main.m
 `xcode`安装的时候顺带安装了`xcrun`命令，`xcrun`命令在`clang`的基础上进行了 一些封装，要更好用一些
 xcrun -sdk iphonesimulator clang -arch arm64 -rewrite-objc main.m -o main-arm64.cpp (模拟器)
 xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc main.m -o main- arm64.cpp (手机)
 
 */


#endif /* remark_h */
