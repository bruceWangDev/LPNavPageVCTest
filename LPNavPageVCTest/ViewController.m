//
//  ViewController.m
//  LPNavPageVCTest
//
//  Created by LPDev on 16/4/19.
//  Copyright © 2016年 anonymous. All rights reserved.
//

#import "ViewController.h"
#import "LPHomeVC.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)goHomeVC:(id)sender {
    
    LPHomeVC * homeVC = [[LPHomeVC alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    [self presentViewController:nav animated:YES completion:^{
      
        NSLog(@"LPLPLP");
    }];
//    [self.navigationController pushViewController:homeVC animated:YES];

}

- (void)viewDidLoad {

    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
}

@end
