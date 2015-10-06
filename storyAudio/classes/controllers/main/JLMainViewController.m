//
//  JLMainViewController.m
//  storyAudio
//
//  Created by LiuJianxun on 9/24/15.
//  Copyright (c) 2015 jonny. All rights reserved.
//

#import "JLMainViewController.h"
#import "JLStoreViewController.h"
#import "JLBuyViewController.h"
#import "JLProfileViewController.h"


@interface JLMainViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableIndexSet *optionIndices;

@end

@implementation JLMainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"儿童有声读物";
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    //设置分割线，貌似没什么用
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
    UIImage *image = [UIImage imageNamed:@"burger"];
    
    
    UIButton *backViewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backViewBtn.frame = CGRectMake(0, 0, 17, 17);
    [backViewBtn setImage:image forState:UIControlStateNormal];
    backViewBtn.backgroundColor  = [UIColor grayColor];
    
    [backViewBtn addTarget:self action: @selector(onBurger:)
          forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backViewBtn];
    self.navigationItem.leftBarButtonItem = backItem;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onBurger:(id)sender {
    NSArray *images = @[
                        [UIImage imageNamed:@"profile"],
                        [UIImage imageNamed:@"star"],
                        [UIImage imageNamed:@"gear"],
                        
                        ];
    NSArray *colors = @[
                        [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
                        [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
                        [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1]
                        ];
    
    RNFrostedSidebar *callout = [[RNFrostedSidebar alloc] initWithImages:images selectedIndices:self.optionIndices borderColors:colors];
    //    RNFrostedSidebar *callout = [[RNFrostedSidebar alloc] initWithImages:images];
    callout.delegate = self;
    //    callout.showFromRight = YES;
    [callout show];
}

#pragma mark - RNFrostedSidebarDelegate

- (void)sidebar:(RNFrostedSidebar *)sidebar didTapItemAtIndex:(NSUInteger)index {
    
    [sidebar dismissAnimated:YES completion:^(BOOL finished) {
        if (index == 0) {//登陆页面
            JLProfileViewController *profileVC = [[JLProfileViewController alloc]initWithNibName:@"JLProfileViewController" bundle:nil];
            [self.navigationController pushViewController:profileVC animated:YES];
            
        }else if(index == 1){//我的购买
            
            JLBuyViewController *buyVC = [[JLBuyViewController alloc]initWithNibName:@"JLBuyViewController" bundle:nil];
            [self.navigationController pushViewController:buyVC animated:YES];
            
        }else if(index == 2){//设置页面
            
        }

    }];
    
    
}

- (void)sidebar:(RNFrostedSidebar *)sidebar didEnable:(BOOL)itemEnabled itemAtIndex:(NSUInteger)index {
    if (itemEnabled) {
        [self.optionIndices addIndex:index];
    }
    else {
        [self.optionIndices removeIndex:index];
    }
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];// 取消选中
    
    if (indexPath.row == 0) {
        
        JLStoreViewController *storeVC = [[JLStoreViewController alloc]initWithNibName:@"JLStoreViewController" bundle:nil];
        [self.navigationController pushViewController:storeVC animated:YES];
        
    }else {
        
        JLBuyViewController *buyViewController = [[JLBuyViewController alloc]initWithNibName:@"JLBuyViewController" bundle:nil];
        [self.navigationController pushViewController:buyViewController animated:YES];
        
    }
    
}


#pragma mark - UITableViewDataSource
//section头部
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}


//组头高
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0 ;
}


-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0 ;
}


//组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1 ;
}


//行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120 ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellStr= @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    
    if(indexPath.row == 0){
        cell.textLabel.text = @"故事商城";
    }else{
        cell.textLabel.text = @"我的购买";
    }
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    //    cell.selectionStyle = UITableViewCellSelectionStyleNone;//设置点击后没有效果
    
    return cell;
    
}


@end
