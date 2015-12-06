//
//  WMDropdownMenu.h
//  WMweibo
//
//  Created by 张靖乾 on 15-12-4.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WMDropdownMenu : UIView
+(instancetype)menu;

-(void)showFrom:(UIView *)from;
-(void)dismiss;

@property (nonatomic,strong) UIView *content;
@property (nonatomic,strong) UIViewController *contentVC;
@end
