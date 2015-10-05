//
//  CYSettingViewController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYSettingViewController.h"
#import "CYTestViewController.h"

@interface CYSettingViewController ()

@end

@implementation CYSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"设置";
    self.view.backgroundColor = [UIColor grayColor];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CYTestViewController *test = [[CYTestViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}
@end