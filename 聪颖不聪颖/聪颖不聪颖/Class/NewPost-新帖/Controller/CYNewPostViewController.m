//
//  CYNewPostViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYNewPostViewController.h"

@interface CYNewPostViewController ()

@end

@implementation CYNewPostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 设置导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIcon" target:self action:@selector(newpostClick)];
    
    
    
    
    // 这两种方法所实现的效果是一样的，但是很明显用上面的
    //    UIImageView *titleView = [[UIImageView alloc] init];
    //    titleView.image = [UIImage imageNamed:@"MainTitle"];
    //    [titleView sizeToFit];
    //    self.navigationItem.titleView = titleView;
    
    
}
- (void)newpostClick
{
//    NSLog(@"%s",__func__);
    CYLogFunc;
    UITableViewController *newpost = [[UITableViewController alloc] init];
    newpost.navigationItem.title = @"我最帅";
//    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:77/255.0 green:62/255.0 blue:58/255.0 alpha:1.0]; // 这里设置导航栏的背景色
//    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];// 这里设置返回键BarButtonItem的颜色
    [self.navigationController pushViewController:newpost animated:YES];
}


@end