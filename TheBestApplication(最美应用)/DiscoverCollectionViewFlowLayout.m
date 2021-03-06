//
//  DiscoverCollectionViewFlowLayout.m
//  TheBestApplication(最美应用)
//
//  Created by 周建 on 15/5/21.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import "DiscoverCollectionViewFlowLayout.h"

@implementation DiscoverCollectionViewFlowLayout

- (id)init{
    self = [super init];
    if (self) {
        self.minimumLineSpacing = 20.0f;//item间隔
        self.itemSize =CGSizeMake(300, 400);//item尺寸大小
        self.scrollDirection = UICollectionViewScrollDirectionVertical;//滑动方向
//        self.headerReferenceSize = CGSizeMake(10, 70);//头部区域大小
        self.sectionInset = UIEdgeInsetsMake(85, 10, 10, 10);//不填充区域
    }
    
    return self;
}

@end
