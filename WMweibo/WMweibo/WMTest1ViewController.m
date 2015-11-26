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
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    WMTest2ViewController *test2 = [[WMTest2ViewController alloc]init];
    test2.title = @"测试2";
    [self.navigationController pushViewController:test2 animated:YES];
}

@end
