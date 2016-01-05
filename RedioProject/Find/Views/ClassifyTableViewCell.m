//
//  ClassifyTableViewCell.m
//  RedioProject
//
//  Created by tarena on 16/1/5.
//  Copyright © 2016年 garin. All rights reserved.
//

#import "ClassifyTableViewCell.h"

@interface ClassifyTableViewCell ()
{
    UIImageView *image1;
    UIImageView *image2;

    UILabel *label1;
    UILabel *label2;
}
@end

@implementation ClassifyTableViewCell
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.backgroundColor = [UIColor yellowColor];
        
        image1 = [[UIImageView alloc] init];
        [self.contentView addSubview:image1];
        image2 = [[UIImageView alloc] init];
        [self.contentView addSubview:image2];
        
        label1 = [[UILabel alloc] init];
        [self.contentView addSubview:label1];
        label2 = [[UILabel alloc] init];
        [self.contentView addSubview:label2];

    }
    return self;
}
-(void) refreshCell:(NSDictionary *) dic
{
    
    image1.frame = CGRectMake(20, 10, 20, 20);
    image1.backgroundColor = [UIColor yellowColor];
    label1.frame = CGRectMake(CGRectGetMaxX(image1.frame) +10, image1.frame.origin.y, 100, 40);
    label1.backgroundColor = [UIColor redColor];
    image2.frame = CGRectMake(20, 10, 20, 20);
    image2.backgroundColor = [UIColor yellowColor];
    label2.frame = CGRectMake(self.contentView.frame.size.width/2 +20, image1.frame.origin.y, 100, 40);
    label2.backgroundColor = [UIColor redColor];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
