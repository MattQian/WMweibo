//
//  UIBarButtonItem+Extension.h
//  WMweibo
//
//  Created by 张靖乾 on 15-12-1.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end
