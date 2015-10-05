//
//  CYQuickLoginButton.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/10/2.
//  Copyright © 2015年 gecongying. All rights reserved.
//

#import "CYQuickLoginButton.h"

@implementation CYQuickLoginButton

- (void)awakeFromNib
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    // 调整图片的位置和尺寸
    self.imageView.y = 0;
    self.imageView.centerX = self.width * 0.5;
    
    // 调整下面文字的图片和尺寸
    self.titleLabel.x = 0;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
}
@end
