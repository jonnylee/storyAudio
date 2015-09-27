//
//  JLStoreDetailViewController.h
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JLStory1ViewController.h"

@interface JLStoryDetailViewController : UIViewController<UIPageViewControllerDataSource>
{
    UIPageViewController *pageController;
    NSArray *pageContent;
}
@property (strong, nonatomic) UIPageViewController *pageController;
@property (strong, nonatomic) NSArray *pageContent;
@end
