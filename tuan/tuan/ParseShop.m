//
//  ParseShop.m
//  团购界面
//
//  Created by 胡旭东 on 15/5/17.
//  Copyright (c) 2015年 胡旭东. All rights reserved.
//

#import "ParseShop.h"

@implementation ParseShop
+(NSMutableArray *)ParseShopPath:(NSString *)path{
    NSMutableArray *shops = [NSMutableArray array];
    NSString *sstring = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSArray *sstrings = [sstring componentsSeparatedByString:@"\n"];
    for (NSString *s in sstrings) {
        NSArray *strings = [s componentsSeparatedByString:@"&"];
        Shop *s = [[Shop alloc]init];
        s.name = strings[0];
        s.add = strings[1];
        s.money = [strings[2] intValue];
        s.lei = strings[3];
        s.number = [strings[4] intValue];
        s.imageName = strings[5];
        s.wedadd = strings[6];
        [shops addObject:s];
    }

    return shops;
}
//+(NSMutableArray *)ParseShopPath:(NSString *)path{
//    NSMutableArray*shops=[NSMutableArray array];
//    NSString*str=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    NSArray*shopStrs=[str componentsSeparatedByString:@"\n"];
//    for (NSString*shopStr in shopStrs) {
//        NSArray*shopInfo=[shopStr componentsSeparatedByString:@"&"];
//        
//    }
//    
//    return shops;
//}
@end
