//
//  WMTabBar.h
//  WMweibo
//
//  Created by 张靖乾 on 15-12-6.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WMTabBar;

@protocol WMTabBarDelegate <UITabBarDelegate>
@optional
-(void)tabBarDidClickButton:(WMTabBar *)tabBar;
@end
@interface WMTabBar : UITabBar
@property (nonatomic,weak) id <WMTabBarDelegate> delegate;
@end
