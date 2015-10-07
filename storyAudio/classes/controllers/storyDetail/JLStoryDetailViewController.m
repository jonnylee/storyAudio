//
//  JLStoreDetailViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/27/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLStoryDetailViewController.h"
#import "JLStory1ViewController.h"

@interface JLStoryDetailViewController ()

@end

@implementation JLStoryDetailViewController
@synthesize pageController, pageContent;

- (JLStory1ViewController *)viewControllerAtIndex:(NSUInteger)index
{
    // Return the data view controller for the given index.
    if (([self.pageContent count] == 0) ||
        (index >= [self.pageContent count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    JLStory1ViewController *dataViewController = [[JLStory1ViewController alloc] initWithNibName:@"JLStory1ViewController" bundle:nil];
    
    if (index == 0) {
        dataViewController.imageName = @"1.jpg";
    }
    
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(JLStory1ViewController *)viewController
{
//    return [self.pageContent indexOfObject:viewController.dataObject];
    return 1;
}

- (void) createContentPages
{
    NSMutableArray *pageStrings = [[NSMutableArray alloc] init];
    for (int i = 1; i < 11; i++)
    {
        NSString *contentString = [[NSString alloc]
                                   initWithFormat:@"<html><head></head><body><h1>Chapter %d</h1><p>大家好，这是第%d页！</p></body></html>", i, i];
        [pageStrings addObject:contentString];
    }
    pageContent = [[NSArray alloc] initWithArray:pageStrings];
}

- (UIViewController *)pageViewController: (UIPageViewController *)pageViewController viewControllerBeforeViewController: (UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:
                        (JLStory1ViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:
                        (JLStory1ViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageContent count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
    
}

////提供方向变化后，书脊位置的调整，一般是横屏是mid,分2页，竖屏min,分一页
//-(UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation{
//    if(UIInterfaceOrientationIsLandscape(orientation)){
//        return UIPageViewControllerSpineLocationMid;
//    }else{
//        return UIPageViewControllerSpineLocationMin;
//    }
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createContentPages];
    NSDictionary *options = [NSDictionary dictionaryWithObject:
    [NSNumber numberWithInteger:UIPageViewControllerSpineLocationMid]
                                forKey: UIPageViewControllerOptionSpineLocationKey];
    
    self.pageController = [[UIPageViewController alloc]
                           initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl
                           navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                           options: options];
    
    pageController.delegate = self;
    pageController.dataSource = self;
    [[pageController view] setFrame:[[self view] bounds]];
    
    JLStory1ViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObjects:initialViewController,initialViewController, nil];
    
    [pageController setViewControllers:viewControllers
                             direction:UIPageViewControllerNavigationDirectionForward
                              animated:NO
                            completion:nil];
    
    [self addChildViewController:pageController];
    [[self view] addSubview:[pageController view]];
    [pageController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end