//
//  ViewController.m
//  单例test
//
//  Created by ChanIan on 15/9/18.
//  Copyright © 2015年 ChanIan. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person*p1=[Person sharedPerson];
    Person*p2=[Person sharedPerson];
    Person*p3=[p2 copy];
    [Student sharedStudent];
    NSLog(@"%p-%p-%p",p1.gold,p2.gold,p3.gold);
//    extern id _person; 全文件查找引用
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
