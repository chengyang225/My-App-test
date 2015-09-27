//
//  ViewController.m
//  PVZ
//
//  Created by ChanIan on 15/9/25.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sunLabel;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *plantIVs;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}
-(void)initUI{
    UIImage*plantImage=[UIImage imageNamed:@"seedpackets.png"];
    float w=plantImage.size.width/18;
    float h=plantImage.size.height;
    for (int i=0; i<4; i++) {
        UIImageView*plantIV=self.plantIVs[i];
        float x=0;
        switch (i) {
            case 1:
                x=2*w;
                break;
            case 2:
                x=3*w;
                break;
            case 3:
                x=5*w;
                break;
        }
        CGImageRef subImage=CGImageCreateWithImageInRect(plantImage.CGImage, CGRectMake(x, 0, w, h));
        plantIV.image=[UIImage imageWithCGImage:subImage];
        CGImageRelease(subImage);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
