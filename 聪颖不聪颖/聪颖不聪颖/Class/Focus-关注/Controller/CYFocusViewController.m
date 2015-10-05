//
//  CYFocusViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYFocusViewController.h"
#import "CYloginRegisterViewController.h"

@interface CYFocusViewController ()

@end

@implementation CYFocusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的关注";
    self.view.backgroundColor = CYCommonBgColor;
    
    // 设置导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(CYFocusViewClick)];
}
- (void)CYFocusViewClick
{
    CYLogFunc
    UITableViewController *focus = [[UITableViewController alloc] init];
    focus.navigationItem.title = @"百科不是全书";
    [self.navigationController pushViewController:focus animated:YES];
    
}

- (IBAction)loginRegister
{
    CYloginRegisterViewController *loginRegister = [[CYloginRegisterViewController alloc] init];
    [self presentViewController:loginRegister animated:YES completion:nil];
}

//    self.title =@"我的关注";
//    相当于下面两句
//    self.navigationItem.title = @"我的关注";
//    self.tabBarItem.title = @"我的关注";





@end
