//
//  KHFormPersonalDetailCellViewModel.h
//  Kauri
//
//  Created by Nathan on 4/18/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KHFormPersonalDetailCellViewModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *gender;
@property (nonatomic, copy) NSString *age;

- (instancetype)initWithName:(NSString *)name age:(NSString *)age gender:(NSString *)gender;

@end
