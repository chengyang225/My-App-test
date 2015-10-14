//
//  ShopTableViewCell.m
//  团购界面
//
//  Created by 胡旭东 on 15/5/17.
//  Copyright (c) 2015年 胡旭东. All rights reserved.
//

#import "ShopTableViewCell.h"
//#import "UIImageView+AFNetworking.h"
@implementation ShopTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.nameLabel.text = self.s.name;
    self.numberLabel.text = [NSString stringWithFormat:@"%d人",self.s.number];
    self.addLabel.text = self.s.add;
    self.leiLabel.text = self.s.lei;
    self.moneyLabel.text = [NSString stringWithFormat:@"%d元",self.s.money];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:self.s.imageName]];
   
    self.imageIV.image = [UIImage imageWithData:data];
//     [self.imageLabel setImageWithURL:self.s.imageName];
}
- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
