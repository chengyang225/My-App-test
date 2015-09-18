//
//  Person.m
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "Person.h"

@implementation Person
id _person;
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    if (_person==nil) {
        _person=[super allocWithZone:zone];
    }
    return _person;
}
@end
