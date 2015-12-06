//
//  WMTabBarViewController.m
//  WMweibo
//
//  Created by 张靖乾 on 15-11-26.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMTabBarViewController.h"
#import "WMHomeViewController.h"
#import "WMMessageCenterViewController.h"
#import "WMDiscoverViewController.h"
#import "WMProfileViewController.h"
#import "WMNavigationController.h"
#import "WMTabBar.h"

@interface WMTabBarViewController ()<WMTabBarDelegate>

@end

@implementation WMTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //1.设置子控制器
    WMHomeViewController *home = [[WMHomeViewController alloc] init];
    [self addChildVc:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    WMMessageCenterViewController *messageCenter = [[WMMessageCenterViewController alloc] init];
    [self addChildVc:messageCenter title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    
    
    WMDiscoverViewController *discover = [[WMDiscoverViewController alloc] init];
    [self addChildVc:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    
    WMProfileViewController *profile = [[WMProfileViewController alloc] init];
    [self addChildVc:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
    //2.更改系统自带的tabbar
    //self.tabBar = [[WMTabBar alloc] init]; tabbar 只读属性
    WMTabBar *tabBar = [[WMTabBar alloc] init];
    tabBar.delegate = self;
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
    //3.添加一个按钮到tabbar中
   
    
}

-(void )addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
//    childVc.tabBarItem.title = title;  //设置tabbar文字
//    childVc.navigationItem.title = title; //设置navigationBar的文字
    childVc.title = title;
    
    //设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = WMColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
  //不需要，为了防止一开始就创建各个控制器
    // childVc.view.backgroundColor = WMRandomColor;
    
    //先给外面传来的小控制器  包装  一个导航控制器
    WMNavigationController *nav = [[WMNavigationController alloc ] initWithRootViewController:childVc];
    //添加为子控制器
    [self addChildViewController:nav];
}

#pragma mark -WMTabBarDelegate代理方法
-(void)tabBarDidClickButton:(WMTabBar *)tabBar{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
