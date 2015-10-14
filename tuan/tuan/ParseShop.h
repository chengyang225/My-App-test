//
//  ParseShop.h
//  团购界面
//
//  Created by 胡旭东 on 15/5/17.
//  Copyright (c) 2015年 胡旭东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shop.h"
@interface ParseShop : NSObject
@property(nonatomic,strong)Shop *s;
+(NSMutableArray *)ParseShopPath:(NSString *)path;
@end
