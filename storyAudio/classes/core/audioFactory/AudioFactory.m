//
//  AudioFactory.m
//  storyAudio
//
//  Created by LiuJianxun on 9/28/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "AudioFactory.h"

@implementation AudioFactory

+ (AVAudioPlayer *)sharedManager
{
    static AVAudioPlayer *avAudioPlayer = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString *string = [[NSBundle mainBundle] pathForResource:@"ysbg" ofType:@"mp3"];
        //把音频文件转换成url格式
        NSURL *url = [NSURL fileURLWithPath:string];
        
        avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        avAudioPlayer.volume = 1;
        
    });
    return avAudioPlayer;
    
    
}

@end
