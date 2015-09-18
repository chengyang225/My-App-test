//
//  Person.m
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gold=[NSMutableArray array];
    }
    return self;
}
static id _instace;//防止外部引用

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instace=[super allocWithZone:zone];
    });
    return _instace;
}
+(instancetype)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instace=[[self alloc]init];
    });
    return _instace;
}
-(id)copyWithZone:(NSZone *)zone{
    
    return _instace;
}
@end
