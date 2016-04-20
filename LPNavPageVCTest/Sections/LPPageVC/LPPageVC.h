//
//  LPPageVC.h
//  LPNavPageVCTest
//
//  Created by LPDev on 16/4/19.
//  Copyright © 2016年 anonymous. All rights reserved.
//

#import "LPBaseVC.h"

@class LPPageVC;

#pragma LPPageVCEditMode - 最右侧的编辑按钮的mode
typedef NS_ENUM(NSInteger, LPPageVCEditMode) {
    /**
     *  正常
     */
    LPPageVCEditModeDefault = 0,
    /**
     *  编辑
     */
    LPPageVCEditModeEditing
};

/**
 *  LPPageVCDataSource
 */
@protocol LPPageVCDataSource <NSObject>

#pragma LPPageVCDataSource - 设置点击pageVCIndex的vc
- (UIViewController *)pageVC:(LPPageVC *)pageVC viewControllerAtIndex:(NSInteger)index;

#pragma LPPageVCDataSource - 设置点击pageVCIndex的title
- (NSString *)pageVC:(LPPageVC *)pageVC titleAtIndex:(NSInteger)index;

#pragma LPPageVCDataSource - 设置栏目的个数
- (NSInteger)numberOfContentForPageVC:(LPPageVC *)pageVC;

@end

/**
 *  LPPageVCDelegate
 */
@protocol LPPageVCDelegate <NSObject>

@optional // 不一定需要实现以下方法

#pragma LPPageVCDelegate - 将要改变到index
- (void)pageVC:(LPPageVC *)pageVC willChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex;

#pragma LPPageVCDelegate - 已经改变到index
- (void)pageVC:(LPPageVC *)pageVC didChangeToIndex:(NSInteger)toIndex fromIndex:(NSInteger)fromIndex;

#pragma LPPageVCDelegate - 在index处已点击 - 此方法暂时不使用
- (void)pageVC:(LPPageVC *)pageVC didClickAtIndex:(NSUInteger)index;

#pragma LPPageVCDelegate - 点击Edit按钮的mode
- (void)pageVC:(LPPageVC *)pageVC didClickEditMode:(LPPageVCEditMode)mode;

@end

@interface LPPageVC : LPBaseVC {
    
    UIScrollView * _contentScrollView;
    UIScrollView * _segmentScrollView;
}

@property (nonatomic, weak) id <LPPageVCDataSource> dataSource;

@property (nonatomic, weak) id <LPPageVCDelegate> delegate;

#pragma mark - means

// 刷新数据
- (void)reloadData;

// 刷新一个具体的栏目
- (void)reloadDataAtIndex:(NSUInteger)index;

// 根据index获取对应的vc
- (UIViewController *)viewControllerAtIndex:(NSUInteger)index;

@end
