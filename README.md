# LPNavPageVC - 仿网易新闻和今日头条的NavPageVC

不忘初心，方得始终 

因为作者很喜欢这类资讯应用浏览的方式，再加上最近的项目需要使用，于是 LPNavPageVC 就新鲜出炉了。

[![Build Status](https://travis-ci.org/bruceWangDev/LPNavPageVCTest.svg?branch=master)](https://travis-ci.org/bruceWangDev/LPNavPageVCTest)
[![CocoaPods](https://img.shields.io/cocoapods/v/LPNavPageVC.svg)](http://cocoadocs.org/docsets/LPNavPageVC)
[![CocoaPods](https://img.shields.io/cocoapods/l/LPNavPageVC.svg)](https://github.com/bruceWangDev/LPNavPageVCTest/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LPNavPageVC.svg)](http://cocoadocs.org/docsets/LPNavPageVC)
![CocoaPods](https://img.shields.io/cocoapods/dt/LPNavPageVC.svg)
[![GitHub stars](https://img.shields.io/github/stars/bruceWangDev/LPNavPageVCTest.svg?style=social&label=Star)](https://github.com/bruceWangDev/LPButton)

## LPNavPageVC 有两种样式 

LPPageVCSegmentStyleDefault

![LPNavPageVC样式1](https://github.com/EizoiOS/LPNavPageVCTest/blob/master/LPNavPageVCStyleDefault.gif)

LPPageVCSegmentStyleLineHighlight

![LPNavPageVC样式2](https://github.com/EizoiOS/LPNavPageVCTest/blob/master/LPNavPageVCStyleLineHighlight.gif)


## 前言 

来兑现一下自己许诺今年写十个库的计划 


## 代码 

- 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LPNavPageVC'`

- 方法二：导入`LPNavPageVC`文件夹到你的项目中 (文件夹在 Demo - S - L 中可以找到)

* 首先需要使用的VC请继承于LPPageVC (如果你不懂继承 .. Google)

* 其次我们需要遵守LPPageVCDataSource,LPPageVCDelegate两个协议并且实现相关方法

pragma LPPageVCDataSource - 设置点击pageVCIndex的vc
  ```
  - (UIViewController *)pageVC:(LPPageVC *)pageVC viewControllerAtIndex:(NSInteger)index
  ```

pragma LPPageVCDataSource - 设置点击pageVCIndex的title
  ```   
  - (NSString *)pageVC:(LPPageVC *)pageVC titleAtIndex:(NSInteger)index
  ```

pragma LPPageVCDataSource - 设置栏目的个数
  ```
  - (NSInteger)numberOfContentForPageVC:(LPPageVC *)pageVC
  ```

pragma LPPageVCDelegate - 将要改变到index
  ```
  - (void)pageVC:(LPPageVC *)pageVC willChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex
  ```

pragma LPPageVCDelegate - 已经改变到index
  ```
  - (void)pageVC:(LPPageVC *)pageVC didChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex
  ```

pragma LPPageVC - 刷新数据
  ```
  - (void)reloadData
  ```

pragma LPPageVC - 刷新一个具体的栏目
  ```
  - (void)reloadDataAtIndex:(NSUInteger)index;
  ```

pragma LPPageVC - 根据index获取对应的vc
  ```
  - (UIViewController *)viewControllerAtIndex:(NSUInteger)index;
  ```

#PS 第三步

设置代理并且实现相关方法
  ```  
  self.delegate = self;
  self.dataSource = self;
  ```

设置样式 - 两种样式 
   ```
   self.segmentStyle = LPPageVCSegmentStyleDefault;
   self.segmentStyle = LPPageVCSegmentStyleLineHighlight; // 白色高亮在这个样式下不是很明显 自己修改
   ```

设置颜色 - 三个方面的颜色
   ```
   self.normalTextColor = [UIColor blackColor];    // 标签normal
   self.higlightTextColor = [UIColor whiteColor];  // 标签higlight
   self.lineBackground = [UIColor orangeColor];    // 标签背景颜色
   ```

最后切记刷新界面数据
   ```
   [self reloadData];
   ```
    

## Release
### Version 1.2.0 


## 联系 Support

* 发现问题请 Issues 我，谢谢:-)
* Email: brucewangdev@126.com
* Blog: https://brucewangdev.github.io/

## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。