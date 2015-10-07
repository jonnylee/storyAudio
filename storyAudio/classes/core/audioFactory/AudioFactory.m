//
//  AudioFactory.m
//  storyAudio
//
//  Created by LiuJianxun on 9/28/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "AudioFactory.h"

@implementation AudioFactory

static AVAudioPlayer *avAudioPlayer = nil;

+ (AVAudioPlayer *)getCurrentInstance {
    return avAudioPlayer;
}

+ (AVAudioPlayer *)sharedManager
{
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString *string = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"m4a"];
        //把音频文件转换成url格式
        NSURL *url = [NSURL fileURLWithPath:string];
        
        avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        avAudioPlayer.volume = 1;
        
    });
    return avAudioPlayer;
    
}

+ (AVAudioPlayer *)sharedManagerWithPage:(NSInteger)pageNum
{
    static NSInteger page = -1;//默认第二页
    
    if (page != pageNum) {
        page = pageNum;
        
        NSString *string = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%li",(long)page ] ofType:@"m4a"];
        //把音频文件转换成url格式
        NSURL *url = [NSURL fileURLWithPath:string];
        
        avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        avAudioPlayer.volume = 1;
    }
    
    return avAudioPlayer;
    
    
}



@end
