//
//  MoreTableViewCell.m
//  RedioProject
//
//  Created by garin on 16/1/3.
//  Copyright © 2016年 garin. All rights reserved.
//

#import "MoreTableViewCell.h"

@interface MoreTableViewCell ()
{
    UIView *view;
    UILabel *label;
    UILabel *moreLabel;
    UIImageView *imageView1;
    UIImageView *imageView2;
    UIImageView *imageView3;
}
@end

@implementation MoreTableViewCell
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
      if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
      {
        self.backgroundColor = [UIColor yellowColor];
        
        view = [[UIView alloc] init];
          [self.contentView addSubview:view];
        label = [[UILabel alloc] init];
          [view addSubview:label];
        moreLabel = [[UILabel alloc] init];
          [view addSubview:moreLabel];
        imageView1 = [[UIImageView alloc] init];
          [self.contentView addSubview:imageView1];
        imageView2 = [[UIImageView alloc] init];
          [self.contentView addSubview:imageView2];
        imageView3 = [[UIImageView alloc] init];
          [self.contentView addSubview:imageView3];
      }
    return self;
}
-(CGFloat) refreshCell:(NSDictionary *) dic
{
    view.frame = CGRectMake(0, 0,self.contentView.frame.size.width, 20);
    view.backgroundColor = [UIColor greenColor];
    
    label.frame =CGRectMake(0, 0, 100, 20);
    label.text = @"猜你喜欢";
    label.backgroundColor = [UIColor yellowColor];
    
    moreLabel.frame = CGRectMake(view.frame.size.width - 60, 0, 50, 20);
    moreLabel.text = @"更多";
    moreLabel.backgroundColor = [UIColor yellowColor];
    
    imageView1.frame = CGRectMake(10, CGRectGetMaxY(label.frame) +10, label.frame.size.width, label.frame.size.width);
    imageView1.backgroundColor = [UIColor yellowColor];
    imageView3.frame = CGRectMake(self.contentView.frame.size.width - 10 - imageView1.frame.size.width,10, imageView1.frame.size.width, imageView1.frame.size.height);
    imageView3.backgroundColor = [UIColor redColor];
    imageView3.frame = CGRectMake(self.contentView.frame.size.width - 10 - imageView1.frame.size.width, imageView1.frame.origin.y, imageView1.frame.size.width, imageView1.frame.size.height);
    imageView2.backgroundColor = [UIColor blackColor];
    imageView2.frame = CGRectMake(self.contentView.frame.size.width - 20 - imageView1.frame.size.width -10- imageView3.frame.size.width -10 , imageView1.frame.origin.y, imageView1.frame.size.width, imageView1.frame.size.height);
    
   
    CGFloat cellHight = CGRectGetMaxY(self.contentView.frame) +10;
    return cellHight;
}


- (void)awakeFromNib {
    // Initialization code
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
