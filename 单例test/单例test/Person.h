//
//  Person.h
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,strong)NSMutableArray*gold;
+(instancetype)sharedPerson;
@end
