//
//  JLStory1ViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLStory1ViewController.h"


@interface JLStory1ViewController ()

@property (strong,nonatomic) AVAudioPlayer *avAudioPlayer;   //播放器player

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
    
    NSString *string = [[NSBundle mainBundle] pathForResource:@"ysbg" ofType:@"mp3"];
    //把音频文件转换成url格式
    NSURL *url = [NSURL fileURLWithPath:string];
    //初始化音频类 并且添加播放文件
    _avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    //设置代理
    _avAudioPlayer.delegate = self;
    
    //设置初始音量大小
    _avAudioPlayer.volume = 1;
    //    _avAudioPlayer.currentTime = 10;
    
    
    //设置音乐播放次数  -1为一直循环
    _avAudioPlayer.numberOfLoops = -1;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleSingleFingerEvent1:(UITapGestureRecognizer *)gesture {
    _avAudioPlayer.currentTime = 0;
    //预播放
    [_avAudioPlayer play];
    
}

-(void)handleSingleFingerEvent2:(UITapGestureRecognizer *)gesture {
    
    _avAudioPlayer.currentTime = 30;
    [_avAudioPlayer play];
    
}

-(void)handleSingleFingerEvent3:(UITapGestureRecognizer *)gesture {
    
    _avAudioPlayer.currentTime = 60;
    [_avAudioPlayer play];
}

-(void)handleSingleFingerEvent4:(UITapGestureRecognizer *)gesture {
    
    _avAudioPlayer.currentTime = 90;
    [_avAudioPlayer play];
    
}

@end
