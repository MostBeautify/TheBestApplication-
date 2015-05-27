//
//  WingView.m
//  TheBestApplication(最美应用)
//
//  Created by 周建 on 15/5/16.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import "WingView.h"
#import "EverydayCollectionViewCell.h"
#import "EverydayCollectionViewFlowLayout.h"
#import "ViewController.h"
#import "FindCollectionViewCell.h"
#import "DiscoverCollectionViewFlowLayout.h"

@implementation WingView{

    __weak IBOutlet UILabel *jinRiZuiMeiLabel;
    NSInteger _type;
}
//- (id)initWithFrame:(CGRect)frame{
//    self = [super initWithFrame:frame];
//    
//    return self;
//}

//默认方法
- (void)awakeFromNib{
    
    //拿到地址
    NSString * path = [[NSBundle mainBundle] pathForResource:@"FindProperty List" ofType:@"plist"];
    //把地址付给这个数组
    _arr1 = [NSArray arrayWithContentsOfFile:path];
    
    //拿到地址
    NSString * path1 = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    //把地址付给这个数组
    _arr2 = [NSArray arrayWithContentsOfFile:path1];
    
    _mySegmented.hidden = YES;
    _addButton.hidden = YES;
    NSDictionary * dic1 = @{@"introduce":@"让声音更感染",
                            @"headline":@"樱桃音乐",  //标题
                            @"image":@"1",     //图片
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};    //简介
    
    NSDictionary * dic2 = @{@"introduce":@"photo Different",
                            @"headline":@"图片特效专题",
                            @"image":@"2",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic3 = @{@"introduce":@"那些不能不说的事儿",
                            @"headline":@"听说",
                            @"image":@"3",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic4 = @{@"introduce":@"过一把作曲瘾",
                            @"headline":@"Figure",
                            @"image":@"4",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic5 = @{@"introduce":@"你的定制闹钟",
                            @"headline":@"Summarise",
                            @"image":@"5",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic6 = @{@"introduce":@"短视频拍摄",
                            @"headline":@"我要当导演",
                            @"image":@"6",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic7 = @{@"introduce":@"逃婚大作战",
                            @"headline":@"Wedding Escape",
                            @"image":@"7",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic8 = @{@"introduce":@"DIY 更要有格调",
                            @"headline":@"我印",
                            @"image":@"8",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    NSDictionary * dic9 = @{@"introduce":@"让游戏更轻松",
                            @"headline":@"轻松小游戏",
                            @"image":@"9",
                            @"brief":@"返回键卡箍开放空间规划局了看法的哈根就建行卡发的工行卡京哈的反馈给健康和房间卡客户端发噶交话费卡大家好借口哈库拉肺结核噶进口付电话费钢结构付款交话费轧空莲花府邸会发觉考虑过放得开去哟人体热固化霸飞女"};
    
    _everyDayArr = @[dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9];
    
    //颜色数组
     _colourArr= @[[UIColor colorWithRed:219.0f/255.0f green:112.0f/255.0f blue:147.0f/255.0f alpha:1],
             [UIColor colorWithRed:119.0f/255.0f green:21.0f/255.0f blue:113.0f/255.0f alpha:1],
             [UIColor colorWithRed:186.0f/255.0f green:85.0f/255.0f blue:211.0f/255.0f alpha:1],
             [UIColor colorWithRed:106.0f/255.0f green:90.0f/255.0f blue:205.0f/255.0f alpha:1],
             [UIColor colorWithRed:0.0f/255.0f green:191.0f/255.0f blue:255.0f/255.0f alpha:1],
             [UIColor colorWithRed:0.0f/255.0f green:206.0f/255.0f blue:209.0f/255.0f alpha:1],
             [UIColor colorWithRed:0.0f/255.0f green:250.0f/255.0f blue:154.0f/255.0f alpha:1],
             [UIColor colorWithRed:255.0f/255.0f green:215.0f/255.0f blue:0.0f/255.0f alpha:1],
             [UIColor colorWithRed:255.0f/255.0f green:69.0f/255.0f blue:0.0f/255.0f alpha:1],
             [UIColor colorWithRed:291.0f/255.0f green:112.0f/255.0f blue:147.0f/255.0f alpha:1],];
    
    //列表连线
    self.myCollectionView.dataSource =self;
    self.myCollectionView.delegate = self;
    
    //轻敲手势
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapGestureRecognizer:)];
    //轻敲的次数
    tap.numberOfTapsRequired = 1.0f;
    //轻敲的手指
    tap.numberOfTouchesRequired = 1;
    
    //添加手势
    [self addGestureRecognizer:tap];
    
    
    //设置colletionview的布局
    EverydayCollectionViewFlowLayout *folwLayout = [EverydayCollectionViewFlowLayout new];
    DiscoverCollectionViewFlowLayout * folwLayout1 = [DiscoverCollectionViewFlowLayout new];
    
    if (_type == 3) {
        
        [_myCollectionView setCollectionViewLayout:folwLayout1];
        
    }else{
        
    [_myCollectionView setCollectionViewLayout:folwLayout];
    }
    
    //注册cell
    UINib * nib = [UINib nibWithNibName:@"EverydayCollectionViewCell" bundle:[NSBundle mainBundle]];
    [_myCollectionView registerNib:nib forCellWithReuseIdentifier:@"EverydayCollectionViewCell"];
    
    
    //注册cell
    UINib * nib1 = [UINib nibWithNibName:@"FindCollectionViewCell" bundle:[NSBundle mainBundle]];
    [_myCollectionView registerNib:nib1 forCellWithReuseIdentifier:@"FindCollectionViewCell"];
    
}

// RGB
//float scaleRGB(float value){
//    return value/255.0f;
//}

//绘图时会用到的
- (void)drawRect:(CGRect)rect {
    
}

//点击划出侧翼抽屉框
- (IBAction)popupwingPopupButton:(UIButton *)sender {
    
    CGRect rect = self.frame;
    if (self.frame.origin.x == 0) {
        rect.origin.x = 280;
    }else if (self.frame.origin.x == 280){
        rect.origin.x = 0;
    }
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = rect;
    }];
    
    _popupwingPopupProperty.hidden = YES;
}


//轻敲手势
-(void)tapGestureRecognizer:(UITapGestureRecognizer *)tapGesture{
    [self showContentView];
}


- (void)showContentView{
    CGRect rect = self.frame;
    if (self.frame.origin.x == 280) {
        rect.origin.x = 0;
        _popupwingPopupProperty.hidden = NO;
    }
    [UIView animateWithDuration:0.6 animations:^{
        self.frame = rect;
    }];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (_type == 3) {
        if (_mySegmented.selectedSegmentIndex == 0) {
            return _arr1.count;
        }else{
            return  _arr2.count;
        }
    }else{
        return _everyDayArr.count;
    }
}

//渲染
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (_type == 3)
    {
        //发现应用CELL
        static NSString * identifier = @"FindCollectionViewCell";
        FindCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        
        if (_mySegmented.selectedSegmentIndex == 0)
        {
            NSDictionary * dic = _arr1[indexPath.row];
            cell.collectLabel.text = dic[@"collect"];
            cell.newsLabel.text = dic[@"news"];
            cell.browseLabel.text = dic[@"browse"];
            cell.text.text = dic[@"text"];
            cell.nameLabel.text = dic[@"name"];
            cell.image.image = [UIImage imageNamed:dic[@"image"]];
            
        }
        else
        {
//        //发现应用CELL
//        static NSString * identifier = @"FindCollectionViewCell";
//        FindCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
            NSDictionary * dic = _arr2[indexPath.row];
            cell.collectLabel.text = dic[@"collect"];
            cell.newsLabel.text = dic[@"news"];
            cell.browseLabel.text = dic[@"browse"];
            cell.text.text = dic[@"text"];
            cell.nameLabel.text = dic[@"name"];
            cell.image.image = [UIImage imageNamed:dic[@"image"]];
        }
        
        return cell;
    }
    else
    {
        //每日最美CELL
    static NSString * identifier = @"EverydayCollectionViewCell";
    EverydayCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    NSDictionary * dic = _everyDayArr[indexPath.row];
    cell.headlineLabel.text = dic[@"headline"];
    cell.briefLabel.text = dic[@"brief"];
    cell.image.image = [UIImage imageNamed:dic[@"image"]];
    cell.introduceLabel.text = dic[@"introduce"];
    
    return cell;
    }
}


//CollectionViewCell点击每一块 （76行）
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

//列表他兄弟滑动完后调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    if (_type == 3) {
        return;
    }else
    {
    int index = (int)scrollView.contentOffset.x/self.frame.size.width;
    UIColor * mycolor = _colourArr[index%_colourArr.count];
    
    self.backgroundColor = mycolor;
    _label.backgroundColor = mycolor;
    [self.delegate wingViewDidEndDecelerating:mycolor];
    }
}

-(void)receive:(NSIndexPath *)indexPath{
    
    _type = indexPath.row;
    [self.myCollectionView reloadData];//刷新
    
    //设置colletionview的布局
    EverydayCollectionViewFlowLayout *folwLayout = [EverydayCollectionViewFlowLayout new];
    DiscoverCollectionViewFlowLayout * folwLayout1 = [DiscoverCollectionViewFlowLayout new];
    
    if (_type == 3) {
        [_myCollectionView setCollectionViewLayout:folwLayout1];
        
        //取消列表他兄弟按页滑动
        _myCollectionView.pagingEnabled = NO;
        _mySegmented.hidden = NO;
        _addButton.hidden = NO;
        jinRiZuiMeiLabel.hidden = YES;
    }else{
        //列表他兄弟按页滑动
        _myCollectionView.pagingEnabled = YES;
        _mySegmented.hidden = YES;
        _addButton.hidden = YES;
        jinRiZuiMeiLabel.hidden = NO;
        [_myCollectionView setCollectionViewLayout:folwLayout];
    }
}

//分段控制器方法
- (IBAction)mySegmentedControl:(UISegmentedControl *)sender {
    
    [_myCollectionView reloadData];
}

//发现应用添加按钮
- (IBAction)addButton:(UIButton *)sender {
    
}

@end
