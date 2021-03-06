//
//  JLStory1ViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLStory1ViewController.h"
#import "AudioFactory.h"


@interface JLStory1ViewController ()

@property (strong,nonatomic) AVAudioPlayer *avAudioPlayer;   //播放器player
@property (weak, nonatomic) IBOutlet UIImageView *iamge;

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIView *view5;

@end

@implementation JLStory1ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    if (!self.imageName) {
        self.imageName = @"2.jpg";
    }
    
    self.iamge.image = [UIImage imageNamed:self.imageName];
    
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
    
    _avAudioPlayer = [AudioFactory sharedManager];
    
    if (_avAudioPlayer) {
        [_avAudioPlayer stop];
    }
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if (_avAudioPlayer) {
        [_avAudioPlayer stop];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleSingleFingerEvent1:(UITapGestureRecognizer *)gesture {
    //判断当前VC的index是否是2
    [[AudioFactory getCurrentInstance] stop];
    
    if(self.index == 0){
        _avAudioPlayer = [AudioFactory sharedManagerWithPage:2];
        //预播放
        [_avAudioPlayer play];
//        [_avAudioPlayer stop];
    }
    
    
    
}

-(void)handleSingleFingerEvent2:(UITapGestureRecognizer *)gesture {
    
    [[AudioFactory getCurrentInstance] stop];
    
    if(self.index == 1){
        _avAudioPlayer = [AudioFactory sharedManagerWithPage:3];
        //预播放
        [_avAudioPlayer play];
    }
    
    if (self.index == 2) {
        _avAudioPlayer = [AudioFactory sharedManagerWithPage:4];
        //预播放
        [_avAudioPlayer play];
    }
    
}

-(void)handleSingleFingerEvent3:(UITapGestureRecognizer *)gesture {
    
    [[AudioFactory getCurrentInstance] stop];
    
    if(self.index == 3){
        _avAudioPlayer = [AudioFactory sharedManagerWithPage:5];
        //预播放
        [_avAudioPlayer play];
    }
}

-(void)handleSingleFingerEvent4:(UITapGestureRecognizer *)gesture {
    if (_avAudioPlayer) {
        [_avAudioPlayer stop];
    }
    if(self.index == 3){
        _avAudioPlayer = [AudioFactory sharedManagerWithPage:5];
        //预播放
        [_avAudioPlayer play];
    }
    
}


@end
