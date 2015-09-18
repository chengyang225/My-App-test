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
static id _person;//防止外部引用

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _person=[super allocWithZone:zone];
    });
    return _person;
}
+(instancetype)sharedPerson{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _person=[[self alloc]init];
    });    return _person;
}
-(id)copyWithZone:(NSZone *)zone{
    
    return _person;
}
@end
