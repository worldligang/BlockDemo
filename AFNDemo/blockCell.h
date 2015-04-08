//
//  blockCellTableViewCell.h
//  AFNDemo
//
//  Created by joanfen on 14-9-23.
//  Copyright (c) 2014年 芳仔小脚印. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface blockCell : UITableViewCell

+(UINib *)nib;

typedef void(^switchAction)(blockCell *);

@property (nonatomic,copy)switchAction action;

@property (strong, nonatomic) IBOutlet UISwitch *switchBtn;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)switchToggle:(id)sender;

@end
