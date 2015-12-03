//
//  WMTest1ViewController.m
//  WMweibo
//
//  Created by 张靖乾 on 15-11-26.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMTest1ViewController.h"
#import "WMTest2ViewController.h"
@interface WMTest1ViewController ()

@end

@implementation WMTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    //设置图片
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back"] forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateHighlighted];
    //设置尺寸
    backBtn.size = backBtn.currentBackgroundImage.size;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"更多" style:UIBarButtonItemStyleDone target:nil action:nil];
    
}
-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    WMTest2ViewController *test2 = [[WMTest2ViewController alloc]init];
    test2.title = @"测试2";
    [self.navigationController pushViewController:test2 animated:YES];
}

@end
