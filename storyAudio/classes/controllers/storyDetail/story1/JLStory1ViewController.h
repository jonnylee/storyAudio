//
//  JLStory1ViewController.h
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface JLStory1ViewController : UIViewController<AVAudioPlayerDelegate>


@property (strong,nonatomic) NSString *imageName;
@property (nonatomic) NSInteger index;


@end
