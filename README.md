# CZColor_iOS
扩展生成颜色的方法的 Category，可以使用十六进制的字符串，或最大值为255.0的色值，也可以生成随机色。

[1. 介绍](#1-介绍)
[2. 安装](#2-安装)

## 1. 介绍

UIColor 为我们提供了很多颜色的创建方法，但在 RGB 方面，只提供了参数范围为 0.0~1.0 的 RGB 值的方法。而在日常开发中，设计师往往提供十六进制或取值范围为 0.0~255.0 的色值。CZColor_iOS 就是对 UIColor 的扩展，用于处理这些特殊的色值。

CZColor_iOS 提供了4种对颜色的处理方法：

* 使用十六进制的色值设置颜色
* 使用取值范围为 0.0~255.0 的色值设置颜色
* 生成随机色
* 根据图片获取图片的主色调

## 2. 安装

下载 [CZColor_iOS](https://github.com/clayzhu/CZColor_iOS/archive/master.zip)，将 `/CZColorDemo/CZColor` 文件夹拖入项目中，记得在 `Destination: Copy items if needed` 前面打勾。

## 3. 说明

`/CZColorDemo/CZColor` 文件夹下的 `UIColor+CZColor.h`、`UIColor+CZColor.m`，是主要实现文件。

使用分类扩展 UIColor 的方法，并使用类方法，调用时就像直接调用系统的方法。

### 3.1 使用十六进制的色值设置颜色

