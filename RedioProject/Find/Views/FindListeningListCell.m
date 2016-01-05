//
//  FindListeningListCell.m
//  RedioProject
//
//  Created by tarena on 16/1/5.
//  Copyright © 2016年 garin. All rights reserved.
//

#import "FindListeningListCell.h"

@interface FindListeningListCell ()

{
    UIView *view;
    UILabel *label;
    UILabel *moreLabel;
    UIImageView *imageView1;
    UIImageView *imageView2;
    UILabel *titleLabel;
    UILabel *detailLabel;
}

@end

@implementation FindListeningListCell

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
        titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:titleLabel];
        detailLabel = [[UILabel alloc] init];
        [self.contentView addSubview:detailLabel];

    }
    return self;
}
-(void) refreshCell:(NSDictionary *) dic
{
    view.frame = CGRectMake(0, 0,self.contentView.frame.size.width, 20);
    view.backgroundColor = [UIColor greenColor];
    
    label.frame =CGRectMake(0, 0, 100, 20);
    label.text = @"精品听单";
    label.backgroundColor = [UIColor yellowColor];
    
    moreLabel.frame = CGRectMake(view.frame.size.width - 60, 0, 50, 20);
    moreLabel.text = @"更多";
    moreLabel.backgroundColor = [UIColor yellowColor];
    
    imageView1.frame = CGRectMake(10, CGRectGetMaxY(view.frame), label.frame.size.width, label.frame.size.width);
    imageView1.backgroundColor = [UIColor yellowColor];
    
    imageView2.frame = CGRectMake(10, CGRectGetMaxY(imageView1.frame)+20, imageView1.frame.size.width, imageView1.frame.size.height);
    imageView2.backgroundColor = [UIColor grayColor];
    
    titleLabel.frame = CGRectMake(CGRectGetMaxX(imageView1.frame) +10, imageView1.frame.origin.y, view.frame.size.width - 10 - imageView1.frame.size.width - 10 - 30, 20);
    titleLabel.text = @"faskdfjlasjdlkfajskldf";
    titleLabel.backgroundColor = [UIColor redColor];
    detailLabel.frame = CGRectMake(titleLabel.frame.origin.x, CGRectGetMaxY(titleLabel.frame)+10, titleLabel.frame.size.width, self.contentView.frame.size.height - view.frame.size.height - 10 - titleLabel.frame.size.height - 10);
    detailLabel.text = @"afsdfasdfasldkjfalksjdlkfajskdl";
        detailLabel.backgroundColor = [UIColor yellowColor];
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
