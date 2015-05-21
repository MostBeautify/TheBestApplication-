//
//  EverydayCollectionViewCell.h
//  TheBestApplication(最美应用)
//
//  Created by 周建 on 15/5/18.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EverydayCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;  //标题

@property (weak, nonatomic) IBOutlet UIImageView *image;   //中间的图片

@property (weak, nonatomic) IBOutlet UILabel *briefLabel;    //简介

@property (weak, nonatomic) IBOutlet UILabel *introduceLabel;   //介绍


@end
