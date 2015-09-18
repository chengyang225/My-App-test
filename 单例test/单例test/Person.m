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
    @synchronized(self) {
        if (_person==nil) {
            _person=[super allocWithZone:zone];
        }
    }
  
    return _person;
}
+(instancetype)sharedPerson{
    if(_person==nil){//防止频繁加锁
    @synchronized(self) {
        if(_person==nil){//防止创建多次
            _person=[[self alloc]init];
        }
    }
    }
    return _person;
}
-(id)copyWithZone:(NSZone *)zone{
    
    return _person;
}
@end
