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

@interface JLMainViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
    
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
