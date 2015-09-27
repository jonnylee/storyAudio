//
//  JLBuyViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/25/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLBuyViewController.h"
#import "JLStoreViewController.h"
#import "JLBuyDetailViewController.h"
#import "JLStoryDetailViewController.h"
#import "JLBuyCollectionViewCell.h"

@interface JLBuyViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

@implementation JLBuyViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"我的购买";
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    static NSString * CellIdentifier = @"GradientCell";
//    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
//    cell.backgroundColor = [UIColor colorWithRed:((10 * indexPath.row) / 255.0) green:((20 * indexPath.row)/255.0) blue:((30 * indexPath.row)/255.0) alpha:1.0f];
//    return cell;

    
    static NSString * CellIdentifier = @"JLBuyCollectionViewCell";
    
    // Register nib file for the cell
    UINib *nib = [UINib nibWithNibName:@"JLBuyCollectionViewCell"
                                bundle: [NSBundle mainBundle]];
    
    [collectionView registerNib:nib forCellWithReuseIdentifier:CellIdentifier];
    
    JLBuyCollectionViewCell *cell = [[JLBuyCollectionViewCell alloc]init];
    // Set up the reuse identifier
    cell = [collectionView dequeueReusableCellWithReuseIdentifier: CellIdentifier
                                                     forIndexPath:indexPath];
    
    return cell;
    
}

#pragma mark --UICollectionViewDelegateFlowLayout
//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath  {
    return CGSizeMake(220, 220);
}

//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    JLBuyDetailViewController *buyDetailVC = [[JLBuyDetailViewController alloc]initWithNibName:@"JLBuyDetailViewController" bundle:nil];
    
    [self.navigationController pushViewController:buyDetailVC animated:YES];
}

//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}



@end
