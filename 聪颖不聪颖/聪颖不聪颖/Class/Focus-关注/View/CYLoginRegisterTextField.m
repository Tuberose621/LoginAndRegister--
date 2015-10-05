//
//  CYLoginRegisterTextField.m
//  聪颖不聪颖
//
//  Created by 葛聪颖 on 15/10/3.
//  Copyright © 2015年 gecongying. All rights reserved.
//

#import "CYLoginRegisterTextField.h"
#import <objc/runtime.h>

@interface CYLoginRegisterTextField() <UITextFieldDelegate>

@end
@implementation CYLoginRegisterTextField

// 占位文字颜色
#define CYPlaceholderColorKey @"placeholderLabel.textColor"
// 默认的占位文字颜色
#define CYPlaceholderDefaultColor [UIColor grayColor]
// 聚焦的占位文字颜色
#define CYPlaceholderFocusColor [UIColor whiteColor]

- (void)awakeFromNib
{
    // 文本框的光标颜色
    self.tintColor = CYPlaceholderFocusColor;
    // 文字颜色
    self.textColor = CYPlaceholderFocusColor;
    // 设置占位文字的颜色
    [self setValue:CYPlaceholderDefaultColor forKeyPath:CYPlaceholderColorKey];
    [self resignFirstResponder];
}

/**
 *  文本框聚焦时调用(成为第一响应者)（弹出当前文本框对应的键盘时调用）
 */
- (BOOL)becomeFirstResponder
{
    [self setValue:CYPlaceholderFocusColor forKeyPath:CYPlaceholderColorKey];
    return [super becomeFirstResponder];
}

/**
 *  文本框失去焦点时调用(成为第一响应者)（弹出当前文本框对应的键盘时调用）
 */
- (BOOL)resignFirstResponder
{
    [self setValue:CYPlaceholderDefaultColor forKeyPath:CYPlaceholderColorKey];
    return [super resignFirstResponder];
}

# pragma mark-切换占位文字颜色-方法一   设置代理
//#pragma mark -UITextFieldDelegate
//-(void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:@"placeholderLabel.textColor"];
//}
//    
//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    [self setValue:[UIColor grayColor] forKeyPath:@"placeholderLabel.textColor"];
//}

# pragma mark-切换占位文字颜色-方法二   addTarget:方法
// 通过通知--监听文本框的开始和结束编辑
//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beginEditing) name:UITextFieldTextDidBeginEditingNotification object:self];
//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endEditing) name:UITextFieldTextDidEndEditingNotification object:self];
//}
//
//-(void)dealloc
//{
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}
//-(void)beginEditing
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:@"placeholderLabel.textColor"];
//}
//-(void)endEditing
//{
//    [self setValue:[UIColor grayColor] forKeyPath:@"placeholderLabel.textColor"];
//}

# pragma mark-切换占位文字颜色-方法三   通知
//// 通过通知--监听文本框的开始和结束编辑
//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beginEditing) name:UITextFieldTextDidBeginEditingNotification object:self];
//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endEditing) name:UITextFieldTextDidEndEditingNotification object:self];
//}
//-(void)beginEditing
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:@"placeholderLabel.textColor"];
//}
//-(void)endEditing
//{
//    [self setValue:[UIColor grayColor] forKeyPath:@"placeholderLabel.textColor"];
//}

# pragma mark-切换占位文字颜色-方法四   第一响应者
//[self resignFirstResponder];
//}
//
///**
// *  文本框聚焦时调用(成为第一响应者)（弹出当前文本框对应的键盘时调用）
// */
//- (BOOL)becomeFirstResponder
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:@"placeholderLabel.textColor"];
//    return [super becomeFirstResponder];
//}
//
///**
// *  文本框失去焦点时调用(成为第一响应者)（弹出当前文本框对应的键盘时调用）
// */
//- (BOOL)resignFirstResponder
//{
//    [self setValue:[UIColor grayColor] forKeyPath:@"placeholderLabel.textColor"];
//    return [super resignFirstResponder];
//}



# pragma mark------------------------------------------------

    /**
     1.什么是运行时（Runtime）?
     * 运行时是苹果提供的纯C语言的开发库（运行时是一种非常牛逼、开发中经常用到的底层技术）
     
     2.运行时的作用？
     * 能获得某个类的所有成员变量
     * 能获得某个类的所有属性
     * 能获得某个类的所有方法
     * 交换方法实现
     * 能动态添加一个成员变量
     * 能动态添加一个属性
     * 能动态添加一个方法
     */
    
//    // 成员变量的数量
//    unsigned int outCount = 0;
//    
//    // 获得所有的成员变量
//    Ivar *ivars = class_copyIvarList([UITextField class], &outCount);
//    
//    // 遍历所有的成员变量
//    for (int i = 0; i<outCount; i++) {
//        // 取出i位置对应的成员变量
//        Ivar ivar = ivars[i];
//        // 获得成员变量的名字
//        NSLog(@"%s", ivar_getName(ivar));
//    }
//    
//    // 如果函数名中包含了copy\new\retain\create等字眼，那么这个函数返回的数据就需要手动释放
//    free(ivars);


# pragma mark------------------------------------------------
//# pragma mark - 设置占位文字的相关属性
//- (void)drawPlaceholderInRect:(CGRect)rect
//{
//    // 方法一
//    // 占位文字画在哪个矩形框里面
//    CGRect placeholderRect = self.bounds;
//    placeholderRect.origin.y = (self.height - self.font.lineHeight) * 0.5;
//    
//    // 文字属性
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSForegroundColorAttributeName] = [UIColor redColor];
//    attrs[NSFontAttributeName] = self.font;
//    [self.placeholder drawInRect:placeholderRect withAttributes:attrs];

    // 方法二
    // 占位文字画在哪个位置
    //    CGPoint point;
    //    point.x = 0;
    //    point.y = (self.height - self.font.lineHeight) * 0.5;
    //
    //    // 文字属性
    //    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    //    attrs[NSForegroundColorAttributeName] = [UIColor redColor];
    //    attrs[NSFontAttributeName] = self.font;
    //    [self.placeholder drawAtPoint:point withAttributes:attrs];
//}

# pragma mark------------------------------------------------
//# pragma mark -富文本用法1 - 不可变的属性文字
//NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
//// 设置占位文字颜色为白色
//attrs[NSUnderlineStyleAttributeName] = @1;
//// 设置占位文字是否有下划线（0是NO，1是YES）
//attrs[NSUnderlineColorAttributeName] = [UIColor redColor];
//// 设置占位文字的下划线颜色为红色
//self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attrs];

# pragma mark------------------------------------------------
//# pragma mark -富文本用法2 - 可变的属性文字
//NSAttributedString和NSMutableAttributedString
//// 一个是创建了就不可以修改属性了，另外一个还可以修改属性，所以使用NSMutableAttributedString在它创建的时候就修改属性
//NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:self.placeholder];
//[string addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 1)];
//// 在0位置（第一个）文字截取1个长度并把它的文字颜色设置为红色（手机号的“手”，密码的“密”）
//[string addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(1, 1)];
//// 在1位置（第二个）文字截取1个长度并把它的文字颜色设置为绿色（手机号的“机”密码的“码”）
//[string addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:30] range:NSMakeRange(1, 1)];
//// 在1位置（第二个）文字截取1个长度并把它的文字字体大小设置为30（手机号的“机”密码的“码”）
//self.attributedPlaceholder = string;

# pragma mark------------------------------------------------
//# pragma mark -富文本用法3 - 图文混排-常见于聊天的搞怪文字中
//// 将文字，图片，文字分为三段（后面它们的顺序可以调整），先把它们都包装成三个属性文字（NSAttributedString），再调用（NSMutableAttributedString）的appendAttributedString：方法，最后拼接起来
//NSMutableAttributedString *string = [[NSMutableAttributedString alloc] init];
//
//// 第二段：图片
//// attachment附件的意思，可以传图片
//NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
//attachment.image = [UIImage imageNamed:@"login_close_icon"];
//// 可以调整图片的大小和位置
//attachment.bounds = CGRectMake(0, 0, 16, 16);
//NSAttributedString *subtring2 = [NSAttributedString attributedStringWithAttachment:attachment];
//[string appendAttributedString:subtring2];
//
//// 第一段：placeholder
//NSAttributedString *substring1 = [[NSAttributedString alloc] initWithString:self.placeholder];
//[string appendAttributedString:substring1];
//
//// 第三段：哈哈
//NSAttributedString *substring3 = [[NSAttributedString alloc] initWithString:@"哈哈"];
//[string appendAttributedString:substring3];
//
//self.attributedPlaceholder = string;

@end
