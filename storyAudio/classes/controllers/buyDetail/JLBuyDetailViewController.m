//
//  JLBuyDetailViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/25/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLBuyDetailViewController.h"
#import "JLStoryDetailViewController.h"


@interface JLBuyDetailViewController ()

@end

@implementation JLBuyDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)showStoryDetail:(id)sender {
    
    JLStoryDetailViewController *storyDetailVC = [[JLStoryDetailViewController alloc]init];
    
    [self.navigationController pushViewController:storyDetailVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
