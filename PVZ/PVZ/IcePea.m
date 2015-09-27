//
//  IcePea.m
//  PVZ
//
//  Created by ChanIan on 15/9/27.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "IcePea.h"

@implementation IcePea

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.plantImage=[UIImage imageNamed:@"plant_3.png"];
    }
    return self;
}

@end
