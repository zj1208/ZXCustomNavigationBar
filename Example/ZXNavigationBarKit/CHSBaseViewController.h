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


- (BOOL)loadCustomNavigationBar;


- (void)leftBarItemAction:(id)sender;

- (void)rightBarItemAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
