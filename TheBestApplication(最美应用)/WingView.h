//
//  WingView.h
//  TheBestApplication(最美应用)
//
//  Created by 周建 on 15/5/16.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WingViewDelegate <NSObject>

@required
- (void)wingViewDidEndDecelerating:(UIColor *)color;

@end

@interface WingView : UIView<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *popupwingPopupProperty;
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmented;  //分段控制器
@property (weak, nonatomic) IBOutlet UIButton *addButton;  //添加按钮
@property NSArray * everyDayArr;   //每日最美数组
@property NSArray * colourArr;    //颜色数组
@property NSArray * arr1;         //最热分享数组
@property NSArray * arr2;         //最新发布数组

@property (weak, nonatomic)id<WingViewDelegate> delegate;  //协议

- (void)showContentView;   //WingView 位移方法

- (void)receive:(NSIndexPath *)indexPath;   //用来接取ViewController内的indexPath

@end
