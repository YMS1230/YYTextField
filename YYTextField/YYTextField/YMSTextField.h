//
//  YMSTextFiled.h
//  YMSTextField
//
//  Created by 杨茂盛 on 2017/5/9.
//  Copyright © 2017年 杨茂盛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YMSTextField : NSObject

@property(nonatomic,weak)UITextField*textField;

@property(nonatomic,copy)NSString*text;
/**
 placeholder颜色
 */
@property(nonatomic,strong)UIColor*textFieldPlaceholderColor;

/**
 字体大小
 */
@property(nonatomic,assign)CGFloat textFieldFontSize;

/**
 圆角
 */
@property(nonatomic,assign)CGFloat cornerRadius;

/**
 textField的背景颜色
 */
@property(nonatomic,strong)UIColor*textFieldBackgroundColor;

/**
 textField左视图
 */
@property(nonatomic,strong)UIView*leftView;

/**
 左视图的图片名称
 */
@property(nonatomic,copy)NSString*leftViewImageName;

/**
 leftView 的左间距
 */
@property(nonatomic,assign)CGFloat textFieldLeftViewLeftMargin;

/**
 监听输入文字
 */
@property(nonatomic,copy)void(^clickTextFieldBlock)(NSString*);

/**
 简单自定义
 */
-(void)addTextFieldToSuperView:(UIView*)superView
                TextFieldFrame:(CGRect)textFieldFrame
      TextFieldPlaceholderText:(NSString*)text
     TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor
  TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize;


/**
 完全自定义textField
 @param superView 要添加到的视图
 @param textFieldFrame frame
 @param textFieldLeftViewLeftMargin leftView左间距
 @param leftViewImageName leftView图片
 */
-(void)addTextFieldToSuperView:(UIView*)superView
                TextFieldFrame:(CGRect)textFieldFrame
      TextFieldPlaceholderText:(NSString*)text
     TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor
  TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize
         TextFieldCornerRadius:(CGFloat)cornerRadius
      textFieldBackgroundColor:(UIColor*)textFieldBackgroundColor
   TextFieldLeftViewLeftMargin:(CGFloat)textFieldLeftViewLeftMargin
             LeftViewImageName:(NSString*)leftViewImageName;
@end
