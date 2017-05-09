//
//  YMSTextFiled.m
//  YMSTextField
//
//  Created by 杨茂盛 on 2017/5/9.
//  Copyright © 2017年 杨茂盛. All rights reserved.
//

#import "YMSTextField.h"
@interface YMSTextField()<UITextViewDelegate>

@property(nonatomic,strong)UITextField*textFiled;

@end

@implementation YMSTextField
-(instancetype)init{
    if (self = [super init]) {
        //初始默认设置
        self.textFiled = [UITextField new];
        

    }
    return self;
}

-(void)addTextFieldToSuperView:(UIView*)superView
                TextFieldFrame:(CGRect)textFieldFrame
      TextFieldPlaceholderText:(NSString*)text
     TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor
  TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize{
    
    [superView addSubview:self.textFiled];
    
    //frame
    self.textFiled.frame = textFieldFrame;
    self.textFiled.placeholder = text;
    
    //placeHolder
    [self.textFiled setValue:textFieldPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self.textFiled setValue:[UIFont systemFontOfSize:textFieldPlacegolderFontSize]forKeyPath:@"_placeholderLabel.font"];
    
  
}



-(void)addTextFieldToSuperView:(UIView*)superView TextFieldFrame:(CGRect)textFieldFrame
   TextFieldPlaceholderText:(NSString*)text TextFieldPlacegolderColor:(UIColor*)textFieldPlaceholderColor TextFieldPlacegolderFontSize:(CGFloat)textFieldPlacegolderFontSize TextFieldCornerRadius:(CGFloat)cornerRadius textFieldBackgroundColor:(UIColor*)textFieldBackgroundColor TextFieldLeftViewLeftMargin:(CGFloat)textFieldLeftViewLeftMargin LeftViewImageName:(NSString*)leftViewImageName{
    
    [superView addSubview:self.textFiled];
    
    //frame
    self.textFiled.frame = textFieldFrame;
      self.textFiled.placeholder = text;
    
    //placeHolder
    [self.textFiled setValue:textFieldPlaceholderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self.textFiled setValue:[UIFont systemFontOfSize:textFieldPlacegolderFontSize]forKeyPath:@"_placeholderLabel.font"];
    
    //cornerRadius
    self.textFiled.layer.cornerRadius = cornerRadius;
    
    //color
    self.textFiled.backgroundColor = textFieldBackgroundColor;
    
    //leftView
    UIImage *im = [UIImage imageNamed:leftViewImageName];
    UIImageView *iv = [[UIImageView alloc] initWithImage:im];
    self.leftView = [[UIView alloc] initWithFrame:CGRectMake(textFieldLeftViewLeftMargin, 0, 45, 50)];
    iv.center = self.leftView.center;
    [self.leftView addSubview:iv];
    self.textFiled.leftView = self.leftView;
    self.textFiled.leftViewMode = UITextFieldViewModeAlways;
    
}

@end
