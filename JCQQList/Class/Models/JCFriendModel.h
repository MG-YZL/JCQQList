//
//  JCFriendModel.h
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  好友列表 模型
 */
@interface JCFriendModel : NSObject


/**
 *  头像
 */

@property (nonatomic, copy) NSString *icon;
///个性签名
@property (nonatomic, copy) NSString *intro;
///好友名称
@property (nonatomic, copy) NSString *name;
///是不是会员
@property (nonatomic, assign, getter=isVip) BOOL vip;

- (instancetype)initWithNSDictionary:(NSDictionary *)dic;

+ (instancetype)jcFriendModelWithNSDictionart:(NSDictionary *)dic;

@end
