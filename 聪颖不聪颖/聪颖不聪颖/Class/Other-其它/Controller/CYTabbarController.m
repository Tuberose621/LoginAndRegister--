//
//  CYTabbarController.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYTabbarController.h"
#import "CYEssenceViewController.h"
#import "CYFocusViewController.h"
#import "CYPublishViewController.h"
#import "CYNewPostViewController.h"
#import "CYMeViewController.h"
#import "CYTabBar.h"
#import "CYNavigationController.h"

@interface CYTabbarController ()

@end

@implementation CYTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 开始抽取代码了：
    
    // 抽取Item属性
    [self setUpItem];
    [self setUpChildVc];
    
    // 处理tabBar
    [self setUpTabBar];
    
}
/**
 *  处理tabBar
 */
- (void)setUpTabBar
{
    [self setValue:[[CYTabBar alloc] init] forKey:@"tabBar"];
}


/**
 *  设置Item的属性
 */
- (void)setUpItem
{
    // UIControlStateNormal情况下的文字属性
    NSMutableDictionary *normalAtrrs = [NSMutableDictionary dictionary];
    // 文字颜色
    normalAtrrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // UIControlStateSelected情况的文字属性
    NSMutableDictionary *selectedAtrrs = [NSMutableDictionary dictionary];
    // 文字颜色
    selectedAtrrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    // 统一给所有的UITabBatItem设置文字属性
    // 只有后面带有UI_APPEARANCE_SELECTOR方法的才可以通过appearance来设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:normalAtrrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtrrs forState:UIControlStateSelected];
}

/**
 *  设置setUpChildVc的属性，添加所有的子控件
 */
- (void)setUpChildVc
{
    [self setUpChildVc:[[CYEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpChildVc:[[CYNewPostViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpChildVc:[[CYFocusViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setUpChildVc:[[CYMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}

- (void)setUpChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 包装一个导航控制器
    CYNavigationController *nav = [[CYNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
    
    // 设置子控制器的tabBarItem
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:image];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
//    nav.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
    //    vc.tabBarItem.title = title;
    //    vc.tabBarItem.image = [UIImage imageNamed:image];
    //    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    //    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
}





@end
