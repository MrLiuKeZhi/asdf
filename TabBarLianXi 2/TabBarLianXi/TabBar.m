//
//  TabBar.m
//  TabBarLianXi
//
//  Created by Mac on 16/3/30.
//  Copyright © 2016年 Qi. All rights reserved.
//

#import "TabBar.h"
@interface TabBar()
@property (nonatomic,strong)UIButton      *centerButton;
@end
@implementation TabBar
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton      *centerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [centerButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add.png"] forState:UIControlStateNormal];
        [centerButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted.png"] forState:UIControlStateHighlighted];
        [centerButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button.png"] forState:UIControlStateNormal];
        [centerButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted.png"] forState:UIControlStateSelected];
        centerButton.bounds = CGRectMake(0, 0, centerButton.currentBackgroundImage.size.width, centerButton.currentBackgroundImage.size.height);
        [centerButton addTarget:self action:@selector(centerButtonTarget) forControlEvents:UIControlEventTouchUpInside];
        self.centerButton = centerButton;
        [self addSubview:centerButton];
    }
    return self;
}
- (void)centerButtonTarget {
    NSLog(@"点击中间按钮了！！！");
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
   
    CGFloat       tabBarButtonW = self.frame.size.width / 5;
    NSInteger     tabBarButtonIndex = 0;
    self.centerButton.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
  

    for (UIView *child  in  self.subviews) {
        Class      class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            child.frame = CGRectMake(tabBarButtonIndex* tabBarButtonW, 0, tabBarButtonW, 49);
            tabBarButtonIndex ++;
            if (tabBarButtonIndex == 2) {
                tabBarButtonIndex ++;
            }
        }
        
        
    }
    
    
    
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
