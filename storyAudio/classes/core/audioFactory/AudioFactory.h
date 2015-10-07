//
//  AudioFactory.h
//  storyAudio
//
//  Created by LiuJianxun on 9/28/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioFactory : NSObject

+ (AVAudioPlayer *)getCurrentInstance;
+ (AVAudioPlayer *)sharedManager;
+ (AVAudioPlayer *)sharedManagerWithPage:(NSInteger)pageNum;

@end
