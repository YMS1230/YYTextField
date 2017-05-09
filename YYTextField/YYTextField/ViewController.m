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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建对象
    YMSTextField*textField = [YMSTextField new];
    
    //简单自定义
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 100, 200, 60) TextFieldPlaceholderText:@"请输入文字" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14];
    
    //完全自定义
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 300, 200, 60) TextFieldPlaceholderText:@"" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14 TextFieldCornerRadius:30 textFieldBackgroundColor:[UIColor orangeColor] TextFieldLeftViewLeftMargin:15 LeftViewImageName:@""];
    

}


@end
