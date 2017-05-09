//
//  ViewController.m
//  YYTextField
//
//  Created by 杨茂盛 on 2017/5/9.
//  Copyright © 2017年 yms. All rights reserved.
//

#import "ViewController.h"
#import "YMSTextField.h"
@interface ViewController ()
@property(nonatomic,strong)YMSTextField*textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建对象
    YMSTextField*textField = [YMSTextField new];
    
    //完全自定义
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 30, 200, 40) TextFieldPlaceholderText:@"请输入文字" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14 TextFieldCornerRadius:0 textFieldBackgroundColor:[UIColor orangeColor] TextFieldLeftViewLeftMargin:0 LeftViewImageName:@""];
    
    _textField = textField;
    
    _textField.clickTextFieldBlock = ^(NSString *text) {
        NSLog(@"%@",text);
    };
    
    
}



@end
