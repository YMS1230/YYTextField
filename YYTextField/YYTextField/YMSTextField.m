//
//  YMSTextFiled.m
//  YMSTextField
//
//  Created by 杨茂盛 on 2017/5/9.
//  Copyright © 2017年 杨茂盛. All rights reserved.
//

#import "YMSTextField.h"
@interface YMSTextField()

@end

@implementation YMSTextField
-(instancetype)init{
    if (self = [super init]) {
        //初始默认设置
        self.textField = [UITextField new];
    }
    return self;
}

-(void)addTextFieldToSuperView:(UIView*)superView
                TextFieldFrame:(CGRect)textFieldFrame
      TextFieldPlaceholderText:(NSString*)text
     TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor
  TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize{
    
    [superView addSubview:self.textField];
    
    //frame
    self.textField.frame = textFieldFrame;
    self.textField.placeholder = text;
    
    //placeHolder
    [self.textField setValue:textFieldPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self.textField setValue:[UIFont systemFontOfSize:textFieldPlacegolderFontSize]forKeyPath:@"_placeholderLabel.font"];
    
  
}

-(void)addTextFieldToSuperView:(UIView*)superView TextFieldFrame:(CGRect)textFieldFrame
   TextFieldPlaceholderText:(NSString*)text TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize TextFieldCornerRadius:(CGFloat)cornerRadius textFieldBackgroundColor:(UIColor*)textFieldBackgroundColor TextFieldLeftViewLeftMargin:(CGFloat)textFieldLeftViewLeftMargin LeftViewImageName:(NSString*)leftViewImageName{
    
    [superView addSubview:self.textField];
    
    //frame
    self.textField.frame = textFieldFrame;
      self.textField.placeholder = text;
    
    //placeHolder
    [self.textField setValue:textFieldPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self.textField setValue:[UIFont systemFontOfSize:textFieldPlacegolderFontSize]forKeyPath:@"_placeholderLabel.font"];
    
    //cornerRadius
    self.textField.layer.cornerRadius = cornerRadius;
    
    //color
    self.textField.backgroundColor = textFieldBackgroundColor;
    
    //leftView
    UIImage *im = [UIImage imageNamed:leftViewImageName];
    UIImageView *iv = [[UIImageView alloc] initWithImage:im];
    self.leftView = [[UIView alloc] initWithFrame:CGRectMake(textFieldLeftViewLeftMargin, 0, 45, 50)];
    iv.center = self.leftView.center;
    [self.leftView addSubview:iv];
    self.textField.leftView = self.leftView;
    self.textField.leftViewMode = UITextFieldViewModeAlways;
    
}

@end
