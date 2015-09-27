//
//  JLStory1ViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLStory1ViewController.h"

@interface JLStory1ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;

@end

@implementation JLStory1ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UITapGestureRecognizer *firstSingleFingerOne1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleFingerEvent1:)];
    firstSingleFingerOne1.numberOfTouchesRequired = 1; //手指数
    firstSingleFingerOne1.numberOfTapsRequired = 1; //tap次数
    [_view1 addGestureRecognizer:firstSingleFingerOne1];
    
    UITapGestureRecognizer *firstSingleFingerOne2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleFingerEvent2:)];
    firstSingleFingerOne2.numberOfTouchesRequired = 1; //手指数
    firstSingleFingerOne2.numberOfTapsRequired = 1; //tap次数
    [_view2 addGestureRecognizer:firstSingleFingerOne2];
    
    UITapGestureRecognizer *firstSingleFingerOne3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleFingerEvent3:)];
    firstSingleFingerOne3.numberOfTouchesRequired = 1; //手指数
    firstSingleFingerOne3.numberOfTapsRequired = 1; //tap次数
    [_view3 addGestureRecognizer:firstSingleFingerOne3];
    
    UITapGestureRecognizer *firstSingleFingerOne4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleFingerEvent4:)];
    firstSingleFingerOne4.numberOfTouchesRequired = 1; //手指数
    firstSingleFingerOne4.numberOfTapsRequired = 1; //tap次数
    [_view4 addGestureRecognizer:firstSingleFingerOne4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleSingleFingerEvent1:(UITapGestureRecognizer *)gesture {
    
    NSLog(@"");
    
}

-(void)handleSingleFingerEvent2:(UITapGestureRecognizer *)gesture {
    
    NSLog(@"2");
    
}

-(void)handleSingleFingerEvent3:(UITapGestureRecognizer *)gesture {
    
    NSLog(@"3");
    
}

-(void)handleSingleFingerEvent4:(UITapGestureRecognizer *)gesture {
    
    NSLog(@"4");
    
}

@end
