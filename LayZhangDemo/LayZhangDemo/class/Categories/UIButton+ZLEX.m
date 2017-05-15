//
//  UIButton+ZLEX.m
//  LayZhangDemo
//
//  Created by LayZhang on 2017/5/10.
//  Copyright © 2017年 Zhanglei. All rights reserved.
//

#import "UIButton+ZLEX.h"

@implementation UIButton (ZLEX)

#pragma mark - 快速创建button的方法
+ (UIButton *)buttonWithTitle:(NSString *)title action:(SEL)action tag:(NSInteger)tag buttonWidth:(CGFloat)buttonWidth buttonHeight:(CGFloat)buttonHeight color:(NSInteger)color font:(NSInteger)font{
    
    UIButton *button = [[UIButton alloc] init];
    
    button.backgroundColor = [UIColor whiteColor];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:ZLColor(color, color, color) forState:UIControlStateNormal];
    button.tag = tag;
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(tag * buttonWidth, 0, buttonWidth, buttonHeight);
    
    return button;
}

//快速创建一个按钮
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(NSInteger)font{
    
    UIButton *button = [[UIButton alloc] init];
    
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    //    button.backgroundColor = titleColor;
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
    return button;
    
}

//快速创建一个按钮 带图片
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(NSInteger)font imageNamed:(NSString *)imageNamed{
    
    UIButton *button = [[UIButton alloc] init];
    
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    //    button.backgroundColor = [UIColor whiteColor];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
    if (imageNamed) {
        
        [button setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
    }
    
    [button sizeToFit];
    
    return button;
    
}

//快速创建一个按钮带背景图
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(NSInteger)font backImageNamed:(NSString *)name{
    
    UIButton *button = [[UIButton alloc] init];
    
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    
    if (name) {
        
        [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    }
    
    button.backgroundColor = [UIColor whiteColor];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
    return button;
    
}

//快速创建一个按钮带背景图
+ (UIButton *)buttonWithImage:(NSString *)imageName backImageNamed:(NSString *)backName{
    
    UIButton *button = [[UIButton alloc] init];
    
    if (imageName) {
        
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    
    if (backName) {
        
        [button setBackgroundImage:[UIImage imageNamed:backName] forState:UIControlStateNormal];
    }
    
    //    button.backgroundColor = [UIColor whiteColor];
    
    [button sizeToFit];
    
    return button;
    
}

@end
