//
//  JCFriendCell.h
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JCFriendModel.h"

@interface JCFriendCell : UITableViewCell

@property (nonatomic, strong) JCFriendModel *friendModel;

+ (instancetype)jcFriendCellWithTableView:(UITableView *)tableView;

@end
