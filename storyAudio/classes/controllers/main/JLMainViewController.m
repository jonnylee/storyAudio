//
//  JLMainViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/24/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLMainViewController.h"

@interface JLMainViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.title = @"儿童有声读物";
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
