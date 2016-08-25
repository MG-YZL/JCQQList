//
//  JCFriendCell.m
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import "JCFriendCell.h"

@implementation JCFriendCell

+ (instancetype)jcFriendCellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"cell";
    JCFriendCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}


- (void)setFriendModel:(JCFriendModel *)friendModel {
    
    _friendModel = friendModel;
    self.textLabel.text = friendModel.name;
    self.detailTextLabel.text = friendModel.intro;
    self.textLabel.textColor = friendModel.isVip ? [UIColor orangeColor] : [UIColor blackColor];
}

@end
