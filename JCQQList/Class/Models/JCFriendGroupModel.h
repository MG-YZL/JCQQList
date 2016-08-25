//
//  JCFriendGroupModel.h
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  好友列表分组 模型
 */

@interface JCFriendGroupModel : NSObject

///分组名称
@property (nonatomic, copy) NSString *name;
///在线的人数
@property (nonatomic, assign) NSInteger online;

///好友列表数组
@property (nonatomic, strong) NSArray *friends;

///是否展开 默认NO

@property (nonatomic, assign, getter=isExpend) BOOL expend;

- (instancetype)initWithNSDictionary:(NSDictionary *)dic;

+ (instancetype)jcFriendGroupModelWithNSDictionary:(NSDictionary *)dic;

+ (NSArray *)JCFriendGroupList;

@end
