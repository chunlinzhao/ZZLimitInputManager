//
//  SecondController.m
//  LimitInputManagerDemo
//
//  Created by 刘威振 on 6/6/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "SecondController.h"
#import "ZZLimitInputManager.h"

@interface SecondController ()

@property (weak, nonatomic) IBOutlet UITextView *textView_1;
@property (weak, nonatomic) IBOutlet UITextView *textView_2;
@property (weak, nonatomic) IBOutlet UITextView *textView_3;
@property (weak, nonatomic) IBOutlet UITextView *textView_4;

@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",@"呵呵哒");
    // 限制输入10个字符长度
    [ZZLimitInputManager limitInputView:self.textView_1 maxLength:10];
    
    // 限制输入15个字符长度
    [ZZLimitInputManager limitInputView:self.textView_2 maxLength:15];
    
    // 限制不可输入首字符为0
    [ZZLimitInputManager limitInputView:self.textView_3 regX:@"[^0].*"];
    
    // 限制不可输入首字符为0, 手机号码至多11位(xib中设置数字键盘)
    [ZZLimitInputManager limitPhoneInputView:self.textView_4];
}

- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

@end
