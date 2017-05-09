//
//  YMSTextFiled.h
//  YMSTextField
//
//  Created by 杨茂盛 on 2017/4/15.
//  Copyright © 2017年 杨茂盛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YMSTextField : NSObject
@property(nonatomic,strong)UITextField*textFiled;
@property(nonatomic,copy)NSString*text;
/**
 placeholder颜色
 */
@property(nonatomic,strong)UIColor*textFiledPlaceholderColor;
@property(nonatomic,assign)CGFloat textFiledFontSize;
@property(nonatomic,assign)CGFloat cornerRadius;
/**
 textFiled的背景颜色
 */
@property(nonatomic,strong)UIColor*textFiledBackgroundColor;

/**
 textFiled左视图
 */
@property(nonatomic,strong)UIView*leftView;
/**
 左视图的图片名称
 */
@property(nonatomic,copy)NSString*leftViewImageName;
/**
 leftView 的左间距
 */
@property(nonatomic,assign)CGFloat textFiledLeftViewLeftMargin;
/**
 自定义textFiled
 @param superView 要添加到的视图
 @param textFiledFrame frame
 @param textFiledLeftViewLeftMargin leftView左间距
 @param leftViewImageName leftView图片
 */
-(void)addTextFiledToSuperView:(UIView*)superView andTextFiledFrame:(CGRect)textFiledFrame
  andTextFiledPlaceholderText:(NSString*)text andTextFiledPlacegolderColor:(UIColor*)textFiledPlaceholderColor andTextFiledPlacegolderFontSize:(CGFloat)textFiledPlacegolderFontSize andTextFiledCornerRadius:(CGFloat)cornerRadius andtextFiledBackgroundColor:(UIColor*)textFiledBackgroundColor andTextFiledLeftViewLeftMargin:(CGFloat)textFiledLeftViewLeftMargin
          andLeftViewImageName:(NSString*)leftViewImageName;
@end
