//
//  CYTabBar.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/9/6.
//  Copyright (c) 2015年 gecongying. All rights reserved.
//

#import "CYTabBar.h"

@interface CYTabBar()
/** 增加发布按钮*/
@property (nonatomic, weak) UIButton *publishButton;
@end

@implementation CYTabBar


- (instancetype) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 设置背景图片
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishButton sizeToFit];
        // 监听按钮点击（发布按钮）
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        //        publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
        [self addSubview:publishButton];
        self.publishButton = publishButton;
        
    }
    return self;
}
- (void)publishClick
{
    NSLog(@"%s",__func__);
}


/**
 *  重写layoutSubviews方法，布局子控件
 */
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // TabBar的尺寸
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    // 设置发布按钮的位置
    self.publishButton.center = CGPointMake(width * 0.5, height * 0.5);
    
    // 设置索引
    int index = 0;
    // 按钮的尺寸
    CGFloat tabBarButtonW = self.frame.size.width / 5;
    CGFloat tabBarButtonH = self.frame.size.height;
    CGFloat tabBarButtonY = 0;
    
    // 设置四个TabBarButton的frame
    for (UIView *tabBarButton in self.subviews) {
        if (![NSStringFromClass(tabBarButton.class) isEqualToString:@"UITabBarButton"]) continue;
        
        // 计算按钮的X的值
        CGFloat tabBarButtonX = index * tabBarButtonW;
       if (index >= 2) {
            tabBarButtonX += tabBarButtonW; // 给后面2个button增加一个宽度的X值
        }
        tabBarButton.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarButtonH);
        index++;
        
    }    
}
@end
