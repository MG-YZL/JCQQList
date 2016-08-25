//
//  JCViewController.m
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import "JCViewController.h"

#import "JCFriendCell.h"

#import "JCFriendModel.h"
#import "JCFriendGroupModel.h"
#import "JCFriendGroupHeaderView.h"

@interface JCViewController ()<UITableViewDataSource, UITableViewDelegate,JCFriendGroupHeaderViewDelegate>

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) NSArray *friendGroup;

@end

@implementation JCViewController

- (NSArray *)friendGroup {
    if (!_friendGroup) {
        self.friendGroup = [JCFriendGroupModel JCFriendGroupList];
    }
    
    return _friendGroup;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNAViewAndTableViewContent];
    
}

- (void)setupNAViewAndTableViewContent {
    self.title = @"QQ好友列表";
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.sectionHeaderHeight = 44;
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
    
}


#pragma mark---------UITableViewDataSource, UITableViewDelegate 代理方法


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.friendGroup.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    JCFriendGroupModel *model = self.friendGroup[section];
    
    return model.isExpend ? model.friends.count : 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    JCFriendCell *cell = [JCFriendCell jcFriendCellWithTableView:tableView];
    
    cell.friendModel = [self.friendGroup[indexPath.section] friends][indexPath.row];
    return cell;

    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    JCFriendGroupHeaderView *headerView = [JCFriendGroupHeaderView jcFriendHeaderViewWithTableView:tableView];
    headerView.delegate = self;
    JCFriendGroupModel *groupModel = self.friendGroup[section];
    
    headerView.groupModel = groupModel;
    headerView.tag = section;
    return headerView;

}

#pragma mark - headerView的代理方法

- (void)JCHeaderViewDidClickBtn:(JCFriendGroupHeaderView *)headerView {
    
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:headerView.tag];
    
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationNone];
    
}


@end
