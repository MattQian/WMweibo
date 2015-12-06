//
//  WMSearchBar.m
//  WMweibo
//
//  Created by 张靖乾 on 15-12-3.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMSearchBar.h"

@implementation WMSearchBar
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont systemFontOfSize:15];
        self.placeholder = @"请输入搜索条件";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        
        UIImageView *seachIcon =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
        seachIcon.width = 30;
        seachIcon.height = 30;
        seachIcon.contentMode = UIViewContentModeCenter;
        self.leftView = seachIcon;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}

+(instancetype)searchBar{
    return [[self alloc] init];
}
@end
