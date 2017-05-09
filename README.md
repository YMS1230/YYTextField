# YYTextField 自定义TextFiled

# 如何使用：

 导入头文件 "YMSTextField.h"

    # 创建对象
	
    YMSTextField*textField = [YMSTextField new];
    _textField = textField;//记得要强引用,否则文字监听无法实现 会提前销毁

   
   # 定义了两个方法,一种是全部自定义,另一种部分自定义,看需求.

    参数介绍：
    superView                      要添加到的父视图
    textFieldFrame                 frame
    text                           候选框文字
    textFieldPlaceholderColor      候选文字颜色
    textFieldPlacegolderFontSize   候选文字大小
    cornerRadius                   候选框圆角
    textFieldBackgroundColor       背景颜色
    leftViewImageName              左边视图 图片
    textFieldLeftViewLeftMargin    左边视图间距
    
    
   # 简单自定义
	
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 100, 200, 60) TextFieldPlaceholderText:@"请输入文字" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14];
	
    
   # 完全自定义
	
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 300, 200, 60) TextFieldPlaceholderText:@"" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14 TextFieldCornerRadius:30 textFieldBackgroundColor:[UIColor orangeColor] TextFieldLeftViewLeftMargin:15 LeftViewImageName:@""];
    
   # 输入文字的监听
       #pragma mark
       #pragma  mark block cycle
       __weak UIViewController*weakSelf = self;
    
       _textField.clickTextFieldBlock = ^(NSString *text) {
        NSLog(@"%@",text);
       };
    
    

