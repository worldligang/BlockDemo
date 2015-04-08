//
//  blockCellTableViewCell.m
//  AFNDemo
//
//  Created by joanfen on 14-9-23.
//  Copyright (c) 2014年 芳仔小脚印. All rights reserved.
//

#import "blockCell.h"

@implementation blockCell

+(UINib *)nib{
    return [UINib nibWithNibName:NSStringFromClass(self) bundle:nil];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (IBAction)switchToggle:(id)sender {
    self.action(self);
}
@end
