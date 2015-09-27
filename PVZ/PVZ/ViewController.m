//
//  ViewController.m
//  PVZ
//
//  Created by ChanIan on 15/9/25.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "ViewController.h"
#import "SunFlower.h"
#import "Pea.h"
#import "IcePea.h"
#import "Nut.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sunLabel;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *plantIVs;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SunFlower*s1=[[SunFlower alloc]initWithFrame:CGRectMake(100, 100, 30, 50)];
    [self.view addSubview:s1];
    Pea*s2=[[Pea alloc]initWithFrame:CGRectMake(200, 100, 30, 50)];
    [self.view addSubview:s2];
    IcePea*s3=[[IcePea alloc]initWithFrame:CGRectMake(300, 100, 30, 50)];
    [self.view addSubview:s3];
    Nut*s4=[[Nut alloc]initWithFrame:CGRectMake(400, 100, 30, 50)];
    [self.view addSubview:s4];
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
