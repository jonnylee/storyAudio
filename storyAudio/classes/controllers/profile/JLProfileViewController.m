//
//  JLProfileViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 10/7/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLProfileViewController.h"

@interface JLProfileViewController ()

@end

@implementation JLProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    // Do any additional setup after loading the view from its nib.
        [self.navigationController setNavigationBarHidden:false];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doLogin:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
