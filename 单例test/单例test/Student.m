//
//  Student.m
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "Student.h"

@implementation Student
static id _instace;
//程序启动时创建(一个类只会调用一次)
+(void)load{
    _instace=[[self alloc]init];
//    NSLog(@"%p",_student);
}
//第一次创建该类型对象时创建
+(void)initialize{
    
//    NSLog(@"init-%p",_student);
}
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
