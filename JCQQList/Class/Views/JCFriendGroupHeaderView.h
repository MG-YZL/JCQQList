//
//  JCFriendGroupHeaderView.h
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JCFriendGroupModel.h"

@class JCFriendGroupHeaderView;

// 定义一个 协议
@protocol JCFriendGroupHeaderViewDelegate <NSObject>

- (void)JCHeaderViewDidClickBtn:(JCFriendGroupHeaderView *)headerView;

@end


@interface JCFriendGroupHeaderView : UITableViewHeaderFooterView

//代理属性
@property (nonatomic, assign) id<JCFriendGroupHeaderViewDelegate>delegate;

@property (nonatomic, strong) JCFriendGroupModel *groupModel;

+ (instancetype)jcFriendHeaderViewWithTableView:(UITableView *)tableView;

@end
