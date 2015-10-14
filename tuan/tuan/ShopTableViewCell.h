//
//  ShopTableViewCell.h
//  团购界面
//
//  Created by 胡旭东 on 15/5/17.
//  Copyright (c) 2015年 胡旭东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shop.h"
@interface ShopTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *leiLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageIV;
@property (weak, nonatomic) IBOutlet UILabel *addLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(nonatomic,strong)Shop *s;
@end
