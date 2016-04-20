//
//  LPHomeVC.m
//  LPNavPageVCTest
//
//  Created by LPDev on 16/4/19.
//  Copyright © 2016年 anonymous. All rights reserved.
//

#import "LPHomeVC.h"
#import "Masonry.h"

@interface LPHomeVC () <LPPageVCDataSource,LPPageVCDelegate>

@property (nonatomic, copy) NSArray * moderArr;

@end

@implementation LPHomeVC

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.moderArr = @[@"首页",@"纵览",@"音频",@"视频",@"报纸",@"游戏",@"邮箱"];

    self.delegate = self;
    self.dataSource = self;
    
    self.navigationItem.title = @"News";
    
    [self reloadData];
}

#pragma mark - HZPageVcDataSource & Delegate
- (NSInteger)numberOfContentForPageVC:(LPPageVC *)pageVC {
    
    return self.moderArr.count;
}

- (NSString *)pageVC:(LPPageVC *)pageVC titleAtIndex:(NSInteger)index {
    
    return [NSString stringWithFormat:@"%@",self.moderArr[index]];
}

- (UIViewController *)pageVC:(LPPageVC *)pageVC viewControllerAtIndex:(NSInteger)index {
    
    UIViewController * vc = [[UIViewController alloc] init];
    
    vc.view.backgroundColor = [UIColor cyanColor];
    
    return vc;
}

- (void)pageVC:(LPPageVC *)pageVC didChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex {
    
//    NSLog(@"LPPageVC - index %ld - fromIndex %ld",(long)toIndex,(long)fromIndex);
}

- (void)pageVC:(LPPageVC *)pageVC didClickEditMode:(LPPageVCEditMode)mode {
    
//    NSLog(@"mode - %ld",(long)mode);
    
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
