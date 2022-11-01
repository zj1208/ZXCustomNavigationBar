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
    }
}


- (BOOL)loadCustomNavigationBar{
    return NO;
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
        self.customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 44);
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
        [view.leftBarButton addTarget:self action:@selector(leftBarItemAction:) forControlEvents:UIControlEventTouchUpInside];
        [view.leftBarButton setImage:[UIImage imageNamed:@"login_back_icon"] forState:UIControlStateNormal];
        [view setBarBackgroundColor:[UIColor clearColor]];
        [view.rightBarButton1 addTarget:self action:@selector(rightBarItemAction:) forControlEvents:UIControlEventTouchUpInside];
        //        [view.rightBarButton2 addTarget:self action:@selector(previewBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        _customNavigationBar = view;
    }
    return _customNavigationBar;
}

- (void)leftBarItemAction:(id)sender{
    if ([self.navigationController popViewControllerAnimated:YES]) {
        
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)rightBarItemAction:(id)sender{
    
}

@end
