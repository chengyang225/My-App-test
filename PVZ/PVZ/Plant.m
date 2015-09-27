//
//  Plant.m
//  PVZ
//
//  Created by ChanIan on 15/9/27.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "Plant.h"

@implementation Plant

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(changeImage) userInfo:nil repeats:YES];
    }
    return self;
}
-(void)changeImage{
    float w=self.plantImage.size.width/8;
    CGImageRef subImage=CGImageCreateWithImageInRect(self.plantImage.CGImage, CGRectMake(self.count++%8*w, 0, w, self.plantImage.size.height));
    //设置植物图片
    self.image=[UIImage imageWithCGImage:subImage];
    CGImageRelease(subImage);
    
    
}
@end
