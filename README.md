# LPNavPageVC - 仿网易新闻和今日头条的NavPageVC

作者第一个三方库 Thanks 

不忘初心，方得始终

![LPNavPageVC样式1](https://github.com/EizoiOS/LPNavPageVCTest/blob/master/LPNavPageVCStyleDefault.gif)

![LPNavPageVC样式2](https://github.com/EizoiOS/LPNavPageVCTest/blob/master/LPNavPageVCStyleLineHighlight.gif)

## 前言 

1. 来兑现一下自己许诺今年写十个库的计划 

2. 最近的项目用到了 

3. 我确实比较喜欢网易新闻和今日头条这种处理浏览方式的做法 

## 代码 

- 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LPNavPageVC'`

- 方法二：导入`LPNavPageVC`文件夹到你的项目中 (文件夹在 Demo - S - L 中可以找到)

* 首先需要使用的VC请继承于LPPageVC (如果你不懂继承 .. Google)

* 其次我们需要遵守LPPageVCDataSource,LPPageVCDelegate两个协议并且实现相关方法

`   // pragma LPPageVCDataSource - 设置点击pageVCIndex的vc
    - (UIViewController *)pageVC:(LPPageVC *)pageVC viewControllerAtIndex:(NSInteger)index

    // pragma LPPageVCDataSource - 设置点击pageVCIndex的title   
    - (NSString *)pageVC:(LPPageVC *)pageVC titleAtIndex:(NSInteger)index

    // pragma LPPageVCDataSource - 设置栏目的个数
    - (NSInteger)numberOfContentForPageVC:(LPPageVC *)pageVC

    // pragma LPPageVCDelegate - 将要改变到index
    - (void)pageVC:(LPPageVC *)pageVC willChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex

    // pragma LPPageVCDelegate - 已经改变到index
    - (void)pageVC:(LPPageVC *)pageVC didChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex

    // pragma LPPageVC - 刷新数据
    - (void)reloadData

    // pragma LPPageVC - 刷新一个具体的栏目
    - (void)reloadDataAtIndex:(NSUInteger)index;

    // pragma LPPageVC - 根据index获取对应的vc
    - (UIViewController *)viewControllerAtIndex:(NSUInteger)index;
`

#PS 

`   // 第三步 --> 设置代理并且实现相关方法
    self.delegate = self;
    self.dataSource = self;
    
    // 设置样式 - 两种样式
    self.segmentStyle = LPPageVCSegmentStyleDefault;
    self.segmentStyle = LPPageVCSegmentStyleLineHighlight; // 白色高亮在这个样式下不是很明显 自己修改

    // 设置颜色
    self.normalTextColor = [UIColor blackColor];    // 标签normal
    self.higlightTextColor = [UIColor whiteColor];  // 标签higlight
    self.lineBackground = [UIColor orangeColor];    // 标签背景颜色
    
    // 切记刷新界面数据
    [self reloadData];
`

## 更新日志
* 2016.04.25 Update Logs (Tag: 1.1.1) 
* 2016.04.25 Update Logs (Tag: 1.1.0)
* 2016.04.20 Update Logs (Tag: 1.0.0)

## 联系 Support

* 发现问题请 Issues 我，谢谢:-)
* Email: eizoios@126.com
* Blog: http://eizoios.com

## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。

PS:在此鸣谢我的美工 Ms吴..