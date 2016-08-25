//
//  JCFriendModel.m
//  JCQQList
//
//  Created by QB on 16/5/3.
//  Copyright © 2016年 JC. All rights reserved.
//

#import "JCFriendModel.h"

@implementation JCFriendModel

- (instancetype)initWithNSDictionary:(NSDictionary *)dic {
    
    self = [super init];
    if (self) {
        
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

+ (instancetype)jcFriendModelWithNSDictionart:(NSDictionary *)dic {
    
    return [[self alloc] initWithNSDictionary:dic];
}

@end
