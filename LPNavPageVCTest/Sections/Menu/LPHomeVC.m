//
//  LPHomeVC.m
//  LPNavPageVCTest
//
//  Created by LPDev on 16/4/19.
//  Copyright © 2016年 anonymous. All rights reserved.
//

#import "LPHomeVC.h"

@interface LPHomeVC () <LPPageVCDataSource,LPPageVCDelegate> // 第二步 --> 需要遵守 LPPageVCDataSource,LPPageVCDelegate

@property (nonatomic, copy) NSArray * moderArr; // 数据源数组

@end

@implementation LPHomeVC

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.navigationItem.title = @"News";

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.moderArr = @[@"首页阿",@"音频视频阿",@"纵览",@"德玛西亚皇子",@"报纸书本",@"游戏",@"邮箱"];

    // 第三步 --> 设置代理并且实现相关方法
    self.delegate = self;
    self.dataSource = self;
    
    // 设置样式 - 两种样式
    self.segmentStyle = LPPageVCSegmentStyleDefault;
//    self.segmentStyle = LPPageVCSegmentStyleLineHighlight; // 白色高亮在这个样式下不是很明显 自己修改

    // 设置颜色
    self.normalTextColor = [UIColor blackColor];    // 标签normal
    self.higlightTextColor = [UIColor whiteColor];  // 标签higlight
    self.lineBackground = [UIColor orangeColor];    // 标签背景颜色
    
    // 切记刷新界面数据
    [self reloadData];
}

#pragma mark - HZPageVcDataSource & Delegate // 第四步
- (NSInteger)numberOfContentForPageVC:(LPPageVC *)pageVC {
    
    return self.moderArr.count;
}

- (NSString *)pageVC:(LPPageVC *)pageVC titleAtIndex:(NSInteger)index {
    
    return [NSString stringWithFormat:@"%@",self.moderArr[index]];
}

- (UIViewController *)pageVC:(LPPageVC *)pageVC viewControllerAtIndex:(NSInteger)index {
    
    UIViewController * vc = [[UIViewController alloc] init];
    
    if (index % 2) {

        vc.view.backgroundColor = [UIColor cyanColor];

    } else {
        
        vc.view.backgroundColor = [UIColor purpleColor];
    }
    
    return vc;
}

- (void)pageVC:(LPPageVC *)pageVC didChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex {
    
    NSLog(@"LPPageVC - index %ld - fromIndex %ld",(long)toIndex,(long)fromIndex);
}

- (void)pageVC:(LPPageVC *)pageVC didClickEditMode:(LPPageVCEditMode)mode {
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"+/-" message:@"添加或者删除栏目" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * action = [UIAlertAction actionWithTitle:@"I know" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"action block");
    }];
    
    [alert addAction:action];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
