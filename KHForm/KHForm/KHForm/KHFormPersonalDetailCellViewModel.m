//
//  KHFormPersonalDetailCellViewModel.m
//  Kauri
//
//  Created by Nathan on 4/18/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

#import "KHFormPersonalDetailCellViewModel.h"

@implementation KHFormPersonalDetailCellViewModel

- (instancetype)initWithName:(NSString *)name age:(NSString *)age gender:(NSString *)gender
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.gender = gender;
    }
    return self;
}

@end
