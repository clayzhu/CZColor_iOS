# CZColor_iOS
扩展生成颜色的方法的 Category，可以使用十六进制的字符串，或最大值为255.0的色值，也可以生成随机色。

* [1. 介绍](#1-介绍)
* [2. 安装](#2-安装)
* [3. 说明](#3-说明)
  * [3.1 使用十六进制的色值设置颜色](#31-使用十六进制的色值设置颜色)
  * [3.2 使用取值范围为 0.0 ~ 255.0 的色值设置颜色](#32-使用取值范围为-00--2550-的色值设置颜色)
  * [3.3 生成随机色](#33-生成随机色)
  * [3.4 根据图片获取图片的主色调](#34-根据图片获取图片的主色调)
* [4. 示例](#4-示例)

## 1. 介绍

UIColor 为我们提供了很多颜色的创建方法，但在 RGB 方面，只提供了参数范围为 0.0 ~ 1.0 的 RGB 值的方法。而在日常开发中，设计师往往提供十六进制或取值范围为 0.0 ~ 255.0 的色值。CZColor_iOS 就是对 UIColor 的扩展，用于处理这些特殊的色值。

CZColor_iOS 提供了4种对颜色的处理方法：

* 使用十六进制的色值设置颜色
* 使用取值范围为 0.0 ~ 255.0 的色值设置颜色
* 生成随机色
* 根据图片获取图片的主色调

## 2. 安装

下载 [CZColor_iOS](https://github.com/clayzhu/CZColor_iOS/archive/master.zip)，将 `/CZColorDemo/CZColor` 文件夹拖入项目中，记得在 `Destination: Copy items if needed` 前面打勾。

## 3. 说明

`/CZColorDemo/CZColor` 文件夹下的 `UIColor+CZColor.h`、`UIColor+CZColor.m`，是主要实现文件。

使用分类扩展 UIColor 的方法，并使用类方法，调用时就像直接调用系统的方法。

### 3.1 使用十六进制的色值设置颜色

```objc
/**
 *  使用十六进制的色值设置颜色
 *
 *  @param hexString 十六进制的颜色色值，“#”可写可不写。色值可传的格式有：#RBG, #ARGB, #RRGGBB, #AARRGGBB
 *
 *  @return UIColor 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 *  使用十六进制的色值设置颜色，可设置透明度
 *
 *  @param hexString 十六进制的颜色色值，“#”可写可不写。色值可传的格式有：#RBG, #RRGGBB
 *  @param alpha     颜色透明度
 *
 *  @return UIColor 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;
```

### 3.2 使用取值范围为 0.0 ~ 255.0 的色值设置颜色

```objc
/**
 *  设置 RGB 颜色，传入的颜色为最大 255.0 的色值，透明度为 1.0
 *
 *  @param r Red 色值
 *  @param g Green 色值
 *  @param b Blue 色值
 *
 *  @return UIColor 颜色
 */
+ (UIColor *)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b;

/**
 *  设置 RGB 颜色和透明度，传入的颜色为最大 255.0 的色值
 *
 *  @param r     Red 色值
 *  @param g     Green 色值
 *  @param b     Blue 色值
 *  @param alpha 透明度
 *
 *  @return UIColor 颜色
 */
+ (UIColor *)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b alpha:(CGFloat)alpha;
```

### 3.3 生成随机色

```objc
/** 生成一个随机颜色 */
+ (UIColor *)randomColor;
```

### 3.4 根据图片获取图片的主色调

```objc
/** 根据图片获取图片的主色调 */
+ (UIColor *)primaryColorWithImage:(UIImage *)image;
```

## 4. 示例

1. 在 `Main.storyboard` 中添加一个 `UICollectionView`，在 `ViewController` 中实现代理。

2. 创建一个数组 `NSArray<UIColor *> *cellColorList`，保存 `UIColor` 元素，颜色显示在 `UICollectionView` 的每一格中。

3. `cellColorList` 颜色数组通过懒加载的形式创建，每一项实现一个创建 `UIColor` 的方法。

```objc
- (NSArray<UIColor *> *)cellColorList {
    if (!_cellColorList) {
        _cellColorList = @[[UIColor colorWithRed:246.0 / 255 green:80.0 / 255 blue:70.0 / 255 alpha:0.9],
                           [UIColor colorWithHexString:@"#E5F65046"],
                           [UIColor colorWithHexString:@"#F65046" alpha:0.9],
                           [UIColor colorWithR:246.0 g:80.0 b:70.0],
                           [UIColor colorWithR:246.0 g:80.0 b:70.0 alpha:0.9],
                           [UIColor randomColor]];
    }
    return _cellColorList;
}
```

