//
//  ZXCustomNavigationBar.m
//  YiShangbao
//
//  Created by simon on 2017/10/19.
//  Copyright © 2017年 com.Microants. All rights reserved.
//

#import "ZXCustomNavigationBar.h"
#import "NSBundle+Pod.h"

@interface ZXCustomNavigationBar()

@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@end


@implementation ZXCustomNavigationBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (ZXCustomNavigationBar *)bar{
    NSBundle *bundle = [NSBundle bundleWithPodForClass:[self class]];
    NSArray *arr =[bundle loadNibNamed:[[self class] description] owner:self options:nil];
    return [arr firstObject];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.backgroundColor = [UIColor clearColor];
    //当前父视图必须是1，不能隐藏，不然导航上的按钮也看不到了;
    self.alpha = 1.f;

    self.barBackgroundContainerView.backgroundColor = [UIColor whiteColor];
    
    [self.rightBarButton1 setTitle:nil forState:UIControlStateNormal];
    self.rightBarButton1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;

    
    [self.rightBarButton2 setTitle:nil forState:UIControlStateNormal];
    self.rightBarButton2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;

    [self.leftBarButton setTitle:nil forState:UIControlStateNormal];
    [self.leftBarButton setTitle:nil forState:UIControlStateHighlighted];
    self.leftBarButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    [self setBarBackgroundContainerAlpha:1.f animated:NO];
    self.titleLab.text = nil;
    self.titleLab.textColor = [UIColor whiteColor];
}

- (void)setTitle:(NSString *)title
{
    if (_title != title)
    {
        _title = title;
        self.titleLab.text = title;
    }
}

- (void)setBarBackgroundContainerAlpha:(CGFloat)alpha animated:(BOOL)animated
{
    if (!animated)
    {
        _barBackgroundContainerView.alpha = alpha;
    }
    else
    {
        [UIView animateWithDuration:0.2 animations:^{
            
            self.barBackgroundContainerView.alpha = alpha;
        }];
    }
}

- (void)setBarBackgroundColor:(nullable UIColor *)backgroundColor
{
    self.barBackgroundContainerView.backgroundColor = backgroundColor;
}

- (void)setBarBackgroundImage:(nullable UIImage *)backgroundImage
{
    self.barBackgroundImageView.image = backgroundImage;
}
@end
