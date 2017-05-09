


//
//  YMSTextFiled.m
//  YMSTextField
//
//  Created by 杨茂盛 on 2017/4/15.
//  Copyright © 2017年 杨茂盛. All rights reserved.
//

#import "YMSTextField.h"

@implementation YMSTextField
-(instancetype)init{
    if (self = [super init]) {
        //初始默认设置
        self.textFiled = [UITextField new];
        self.textFiledFontSize = 14;
        self.textFiledPlaceholderColor = [UIColor lightGrayColor];
        self.textFiledBackgroundColor = [UIColor whiteColor];
       
    }
    return self;
}
-(void)addTextFiledToSuperView:(UIView*)superView andTextFiledFrame:(CGRect)textFiledFrame
   andTextFiledPlaceholderText:(NSString*)text andTextFiledPlacegolderColor:(UIColor*)textFiledPlaceholderColor andTextFiledPlacegolderFontSize:(CGFloat)textFiledPlacegolderFontSize andTextFiledCornerRadius:(CGFloat)cornerRadius andtextFiledBackgroundColor:(UIColor*)textFiledBackgroundColor andTextFiledLeftViewLeftMargin:(CGFloat)textFiledLeftViewLeftMargin andLeftViewImageName:(NSString*)leftViewImageName{
    [superView addSubview:self.textFiled];
    //设置frame
    self.textFiled.frame = textFiledFrame;
      self.textFiled.placeholder = text;
    //设置placeHolder颜色和大小
    [self.textFiled setValue:textFiledPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self.textFiled setValue:[UIFont systemFontOfSize:textFiledPlacegolderFontSize]forKeyPath:@"_placeholderLabel.font"];
    //圆角
    self.textFiled.layer.cornerRadius = cornerRadius;
    //背景颜色
    self.textFiled.backgroundColor = textFiledBackgroundColor;
    //设置leftView
    UIImage *im = [UIImage imageNamed:leftViewImageName];
    UIImageView *iv = [[UIImageView alloc] initWithImage:im];
    self.leftView = [[UIView alloc] initWithFrame:CGRectMake(textFiledLeftViewLeftMargin, 0, 45, 50)];
    iv.center = self.leftView.center;
    [self.leftView addSubview:iv];
    self.textFiled.leftView = self.leftView;
    self.textFiled.leftViewMode = UITextFieldViewModeAlways;
}
@end
