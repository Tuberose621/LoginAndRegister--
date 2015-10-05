//
//  CYMeViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//
#import "CYMeViewController.h"
#import "CYSettingViewController.h"

@interface CYMeViewController ()

@end

@implementation CYMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的";
    
    // 我的导航栏右边的内容
    UIBarButtonItem *moonButton = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    UIBarButtonItem *settingButton = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingButton,moonButton];
}
- (void)moonClick
{
    CYLogFunc
}


- (void)settingClick
{
    //    self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor]; //设置导航栏的颜色
    //    self.navigationController.navigationBar.tintColor = [UIColor yellowColor]; // 设置返回按钮字体的颜色
    
    CYSettingViewController *setting = [[CYSettingViewController alloc] init];
    [self.navigationController pushViewController:setting animated:YES];
}

@end