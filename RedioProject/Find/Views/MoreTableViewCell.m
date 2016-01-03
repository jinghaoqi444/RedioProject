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
    
}
@end

@implementation MoreTableViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        
    }
    return self;
}
-(void) refreshCell:(NSDictionary *) dic
{
    
}

- (void)awakeFromNib {
    // Initialization code
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
