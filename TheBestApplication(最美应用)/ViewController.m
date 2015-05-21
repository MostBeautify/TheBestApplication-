//
//  ViewController.m
//  TheBestApplication(最美应用)
//
//  Created by 周建 on 15/5/16.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import "ViewController.h"
#import "WingView.h"
#import "ViewControllerCell.h"
#import "BelowTableViewCell.h"
#import "FindCollectionViewCell.h"

@interface ViewController ()<WingViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property     WingView * wView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //加载xib视图
    _wView = [[[NSBundle mainBundle] loadNibNamed:@"WingView" owner:self options:nil] lastObject];
    _wView.delegate = self;
    [self.view addSubview:_wView];
    
    //登录
    NSDictionary * loginDic = @{@"image":@"头像",
                                @"theme":@"登录"};
    //每日最美
    NSDictionary * beautifulDic = @{@"image":@"每日最美",
                                    @"theme":@"每日最美"};
    //限免推荐
    NSDictionary * freeDic = @{@"image":@"限时推荐",
                               @"theme":@"限免推荐"};
    //发现应用
    NSDictionary * foundDic = @{@"image":@"发现应用",
                                @"theme":@"发现应用"};
    //文章专栏
    NSDictionary * columnDic = @{@"image":@"文章专栏蓝",
                                 @"theme":@"文章专栏"};
    //美一下我
    NSDictionary * praiseDic = @{@"image":@"美我一下",
                                 @"theme":@"美我一下"};
    //我的收藏
    NSDictionary * collectionDic = @{@"image":@"我的收藏",
                                     @"theme":@"我的收藏"};
    _wingArray = @[loginDic,beautifulDic,freeDic,foundDic,columnDic,praiseDic,collectionDic];
        
}

- (void)wingViewDidEndDecelerating:(UIColor *)color{
    self.view.backgroundColor = color;
}

//列表多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _wingArray.count;
}
//列表渲染每一行
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == _wingArray.count - _wingArray.count) {
        static NSString * identifier2 = @"BelowTableViewCell";
        BelowTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier2];
        //判断是否有Cell
        if (!cell) {
            cell = [[[NSBundle mainBundle]loadNibNamed:identifier2 owner:self options:nil]lastObject];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.wingButton setImage:[UIImage imageNamed:@"头像"] forState:UIControlStateNormal];
        cell.wingLabe.text = @"登录";
        
        return cell;
    }
    else{
    static NSString * identifier = @"ViewControllerCell";
    ViewControllerCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[[NSBundle mainBundle]loadNibNamed:identifier owner:self options:nil]lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    NSDictionary * dic = _wingArray[indexPath.row];
    [cell.wingButton setImage:[UIImage imageNamed:dic[@"image"]] forState:UIControlStateNormal];
    
    cell.wingLabe.text = dic[@"theme"];
    
    return cell;
    }
}

//设定每一行的高度（89行）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 100;
    }else{
        return 55;
    }
}

//设置方法
- (IBAction)setButton:(UIButton *)sender {
    
}

//搜索方法
- (IBAction)seekButton:(UIButton *)sender {
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//点击每一行
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.wView showContentView];
    
    [self.wView receive:indexPath];
}

@end
