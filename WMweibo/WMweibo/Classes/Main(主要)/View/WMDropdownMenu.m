//
//  WMDropdownMenu.m
//  WMweibo
//
//  Created by 张靖乾 on 15-12-4.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMDropdownMenu.h"

@interface WMDropdownMenu()
@property (nonatomic,strong)   UIImageView *contentView;
@end
@implementation WMDropdownMenu
-(UIImageView *)contentView{
    if (!_contentView ) {
        _contentView = [[UIImageView alloc] init];
        
        _contentView.image = [UIImage imageNamed:@"popover_background"];
//        _contentView.width = 217;
//        _contentView.height =217;
//        _contentView.y = 150;
        _contentView.userInteractionEnabled = YES;
        
        [self addSubview:_contentView];
        self.contentView = _contentView;
    }
    return _contentView;
}
-(void)setContent:(UIView *)content{
    _content = content;
    //添加内容到灰色图片
    content.x = 15 ;
    content.y = 15;
    
    //调整内容的宽度
//    content.width = self.contentView.width - 2 * content.x;
    //设置灰色的尺寸
    self.contentView.height = CGRectGetMaxY(content.frame) +10;
    //设置灰色的宽度
    self.contentView.width = CGRectGetMaxX(content.frame) + 10;

    [self.contentView addSubview:_content];
}
-(void)setContentVC:(UIViewController *)contentVC{
    _contentVC = contentVC;
    
    self.content = contentVC.view;
}
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
    
        self.backgroundColor = [UIColor clearColor];
        
        
        
    }
    return self;
}
+(instancetype)menu{
    return  [[self alloc] init];
}
//销毁
-(void)dismiss{
    [self removeFromSuperview];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self dismiss];
}
-(void)showFrom:(UIView *)from{
    //1,获得最上面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    //2.添加自己到窗口上
    [window addSubview:self];
    //3.设置尺寸
    self.frame   = window.bounds;
    //4调整灰色图片的位置
    
    //默认情况下，frame是以父控件左上角为坐标原点
    //转换坐标系
    CGRect newFrame = [from.superview convertRect:from.frame toView:window];
    NSLog(@"newFrame = %@",NSStringFromCGRect(newFrame));
    self.contentView.centerX = CGRectGetMidX(newFrame);

//    self.contentView.x =( window.size.width - from.size.width) * 0.5;

    self.contentView.y = CGRectGetMaxY(newFrame);
    
}


@end
