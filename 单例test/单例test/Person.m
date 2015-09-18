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
id _person;
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self) {
        if (_person==nil) {
            _person=[super allocWithZone:zone];
        }
    }
  
    return _person;
}
+(instancetype)sharedPerson{
//    @synchronized(self) {
//        if(_person==nil){
//            _person=[[self alloc]init];
//        }
//    }
    return [[self alloc]init];
}
-(id)copyWithZone:(NSZone *)zone{
    
    return _person;
}
@end
