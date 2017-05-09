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
        
        UITextField*textField = [UITextField new];
        self.textField = textField;
        [self.textField addTarget:self action:@selector(editEventChange:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

-(void)editEventChange:(UITextField*)text{
    if (self.clickTextFieldBlock) {
        self.clickTextFieldBlock(text.text);
    }
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
    
     self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
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
    if (leftViewImageName && textFieldLeftViewLeftMargin != 0) {
        UIImage *im = [UIImage imageNamed:leftViewImageName];
        UIImageView *iv = [[UIImageView alloc] initWithImage:im];
        self.leftView = [[UIView alloc] initWithFrame:CGRectMake(textFieldLeftViewLeftMargin, 0, 45, 50)];
        iv.center = self.leftView.center;
        [self.leftView addSubview:iv];
        self.textField.leftView = self.leftView;
        self.textField.leftViewMode = UITextFieldViewModeAlways;
    }
    
     self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}
-(void)dealloc{
    NSLog(@"YMSTextField-dealloc");
}
@end
