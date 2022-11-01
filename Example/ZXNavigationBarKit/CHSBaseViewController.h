//
//  CHSBaseViewController.h
//  CollagePicture
//
//  Created by 海参 on 2022/10/31.
//  Copyright © 2022 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ZXNavigationBarKit/ZXCustomNavigationBar.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHSBaseViewController : UIViewController

@property (nonatomic, strong) ZXCustomNavigationBar *customNavigationBar;

///是否加载自定义navigationBar
- (BOOL)loadCustomNavigationBar;

///是否展示左边按钮
- (BOOL)loadCustomNavigationBarLeftBarItem;


- (void)leftBarItemClick:(id)sender;

- (void)rightBarItemClick:(id)sender;

@end

NS_ASSUME_NONNULL_END
