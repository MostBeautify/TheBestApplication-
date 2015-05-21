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
@property NSArray * everyDayArr;
@property NSArray * arr;

@property (weak, nonatomic)id<WingViewDelegate> delegate;  //协议

- (void)showContentView;   //WingView 位移方法

- (void)receive:(NSIndexPath *)indexPath;   //用来接取ViewController内的indexPath

@end
