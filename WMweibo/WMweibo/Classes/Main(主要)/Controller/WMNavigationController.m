//
//  WMNavigationController.m
//  WMweibo
//
//  Created by 张靖乾 on 15-11-27.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMNavigationController.h"

@implementation WMNavigationController
+(void)initialize{
    
    //设置整个项目所有的Item的主题样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    //设置普通状态
    NSMutableDictionary *textAtrrs = [NSMutableDictionary dictionary];
    textAtrrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAtrrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:textAtrrs forState:UIControlStateNormal];
    
    //设置不可用状态
    NSMutableDictionary *disableTextAtrrs = [NSMutableDictionary dictionary];
    disableTextAtrrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
    disableTextAtrrs[NSFontAttributeName] = [UIFont systemFontOfSize:13.0];
    [item setTitleTextAttributes:disableTextAtrrs forState:UIControlStateDisabled];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated];
    
    if (self.viewControllers.count >1) { //这时push进来的控制器viewcontroller，不是第一个子控制器
       
        
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted"];
        
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
    }
    
}
-(void)back{
#warning 这里要用self，不是self.navigationController
    //因为self本来就是一个导航控制器，self.navigationController这里是nil的
    [self popViewControllerAnimated:YES];
}
-(void)more{
    [self popToRootViewControllerAnimated:YES];
}
@end
