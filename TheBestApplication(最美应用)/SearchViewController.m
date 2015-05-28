//
//  SearchViewController.m
//  TheBestApplication(最美应用)
//
//  Created by 罗望芝 on 15/5/21.
//  Copyright (c) 2015年 周建. All rights reserved.
//

#import "SearchViewController.h"
#import "ViewController.h"
#import <CoreData/CoreData.h>

@interface SearchViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UISearchBar *searchbtn;

@end

@implementation SearchViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.searchbtn becomeFirstResponder];

}




- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    NSLog(@".....");
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * identifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
       cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}
@end
