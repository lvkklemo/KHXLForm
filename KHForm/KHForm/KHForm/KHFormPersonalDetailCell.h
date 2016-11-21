//
//  KHFormPersonalDetailCell.h
//  Kauri
//
//  Created by Nathan on 4/18/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XLForm.h"

extern NSString *const KHFormCellTypePersonalDetail;

@interface KHFormPersonalDetailCell : XLFormBaseCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@end
