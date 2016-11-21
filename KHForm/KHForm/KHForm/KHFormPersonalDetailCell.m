//
//  KHFormPersonalDetailCell.m
//  Kauri
//
//  Created by Nathan on 4/18/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

#import "KHFormPersonalDetailCell.h"
#import "KHFormPersonalDetailCellViewModel.h"

NSString *const KHFormCellTypePersonalDetail = @"KHFormPersonalDetailCell";


@implementation KHFormPersonalDetailCell

+(void)load
{
    [XLFormViewController.cellClassesForRowDescriptorTypes setObject:NSStringFromClass([KHFormPersonalDetailCell class]) forKey:KHFormCellTypePersonalDetail];
}

-(void)configure
{
    [super configure];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
}

- (void)update
{
    [super update];
    KHFormPersonalDetailCellViewModel *viewModel = self.rowDescriptor.value;
    self.nameLabel.text =[NSString stringWithFormat:@"%@%@", @"姓名: ", viewModel.name];
    self.ageLabel.text = [NSString stringWithFormat:@"%@%@", @"年龄: ", viewModel.age];
    self.genderLabel.text = [NSString stringWithFormat:@"%@%@", @"性别: ", viewModel.gender];
    
}

@end
