//
//  CHSBaseViewController.m
//  CollagePicture
//
//  Created by 海参 on 2022/10/31.
//  Copyright © 2022 zxm. All rights reserved.
//

#import "CHSBaseViewController.h"

@interface CHSBaseViewController ()


@end

@implementation CHSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if([self loadCustomNavigationBar]){
        [self configurationCustomNavigationBar];
        
        if ([self loadCustomNavigationBarLeftBarItem]) {
            [self.customNavigationBar.leftBarButton addTarget:self action:@selector(leftBarItemClick:) forControlEvents:UIControlEventTouchUpInside];
            [self.customNavigationBar.leftBarButton setImage:[UIImage imageNamed:@"login_back_icon"] forState:UIControlStateNormal];
        }else{
            self.customNavigationBar.leftBarButton.hidden = YES;
        }
    }
}


- (BOOL)loadCustomNavigationBar{
    return NO;
}

- (BOOL)loadCustomNavigationBarLeftBarItem{
    return self.navigationController.viewControllers.count <= 1 ? NO:YES;
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (void)configurationCustomNavigationBar{
    
    [self.view addSubview:self.customNavigationBar];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    if([self loadCustomNavigationBar]){
        self.customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 64);
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if([self loadCustomNavigationBar]){
        [self.navigationController setNavigationBarHidden:YES animated:animated];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if([self loadCustomNavigationBar]){
        [self.navigationController setNavigationBarHidden:NO animated:animated];
    }}

- (ZXCustomNavigationBar *)customNavigationBar{
    if(!_customNavigationBar)
    {
        ZXCustomNavigationBar *view = [ZXCustomNavigationBar bar];
        [view setBarBackgroundColor:[UIColor clearColor]];
        [view.rightBarButton1 addTarget:self action:@selector(rightBarItemClick:) forControlEvents:UIControlEventTouchUpInside];
        _customNavigationBar = view;
    }
    return _customNavigationBar;
}

- (void)leftBarItemClick:(id)sender{
    if ([self.navigationController popViewControllerAnimated:YES]) {
        
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)rightBarItemClick:(id)sender{
    
}

@end
