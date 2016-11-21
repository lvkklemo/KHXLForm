//
//  ViewController.m
//  KHForm
//
//  Created by 宇航 on 16/11/21.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "ViewController.h"
#import "XLForm.h"
#import "KHFormPersonalDetailCell.h"
#import "KHFormPersonalDetailCellViewModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)];
    self.navigationItem.rightBarButtonItem = rightItem;
  
    KHFormPersonalDetailCellViewModel * modol = [[KHFormPersonalDetailCellViewModel alloc]init];
    modol.name = @"天空海阔";
    modol.age = @"20";
    modol.gender=@"man";
    XLFormDescriptor * form = [XLFormDescriptor formDescriptor];
    XLFormSectionDescriptor * section = [XLFormSectionDescriptor formSection];
    section.footerTitle = @"天空海阔你与我可会变";
    XLFormRowDescriptor * row1 = [XLFormRowDescriptor formRowDescriptorWithTag:@"" rowType:KHFormCellTypePersonalDetail title:@""];
    row1.value = modol;
    [section addFormRow:row1];
    
    //医师
    XLFormRowDescriptor * row2 = [XLFormRowDescriptor formRowDescriptorWithTag:@"doctor" rowType:XLFormRowDescriptorTypeText title:@"     医师: "];
    [section addFormRow:row2];
    
    //医师
    XLFormRowDescriptor * row3 = [XLFormRowDescriptor formRowDescriptorWithTag:@"time" rowType:XLFormRowDescriptorTypeDateTime title:@"     处方时间: "];
    [section addFormRow:row3];
    
    [form addFormSection:section];
    self.form = form;
    
}

- (void)rightAction{
    NSLog(@"%s",__func__);
    NSDictionary*json = [self httpParameters];
    NSLog(@"%@",json);
}

@end
