# YYTextField 自定义TextFiled

# 如何使用：

    # 创建对象
	
    YMSTextField*textField = [YMSTextField new];
	
    
    # 简单自定义
	
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 100, 200, 60) TextFieldPlaceholderText:@"请输入文字" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14];
	
    
    # 完全自定义
	
    [textField addTextFieldToSuperView:self.view TextFieldFrame:CGRectMake(0, 300, 200, 60) TextFieldPlaceholderText:@"" TextFieldPlacegolderColor:[UIColor grayColor] TextFieldPlacegolderFontSize:14 TextFieldCornerRadius:30 textFieldBackgroundColor:[UIColor orangeColor] TextFieldLeftViewLeftMargin:15 LeftViewImageName:@""];
    
    
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
