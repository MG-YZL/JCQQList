//
//  JCFriendGroupModel.m
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import "JCFriendGroupModel.h"

#import "JCFriendModel.h"


@implementation JCFriendGroupModel


- (instancetype)initWithNSDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

+ (instancetype)jcFriendGroupModelWithNSDictionary:(NSDictionary *)dic {
    
    return [[self alloc] initWithNSDictionary:dic];
}

+ (NSArray *)JCFriendGroupList {
    
    NSString *paths =  [[NSBundle mainBundle] pathForResource:@"friends.plist" ofType:nil];
    
    NSArray *array = [NSArray arrayWithContentsOfFile:paths];
    
    NSMutableArray *Marray = [NSMutableArray arrayWithCapacity:array.count];
    for (NSDictionary *tempDic in array) {
        JCFriendGroupModel *groupModel = [JCFriendGroupModel jcFriendGroupModelWithNSDictionary:tempDic];
        NSMutableArray *friendListArray = [NSMutableArray array];
        for (NSDictionary *friendListDic in groupModel.friends) {
            JCFriendModel *Friendmodel = [JCFriendModel jcFriendModelWithNSDictionart:friendListDic];
            [friendListArray addObject:Friendmodel];
        }
        groupModel.friends = friendListArray;
        [Marray addObject:groupModel];
    }
    
    return Marray;
    
}

@end
