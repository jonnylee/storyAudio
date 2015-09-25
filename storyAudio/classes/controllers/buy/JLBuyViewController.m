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

@interface JLBuyViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JLBuyViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"我的购买";
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];// 取消选中
    
    JLBuyDetailViewController *buyDetailVC = [[JLBuyDetailViewController alloc]initWithNibName:@"JLBuyDetailViewController" bundle:nil];
    [self.navigationController pushViewController:buyDetailVC animated:YES];
    
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
        cell.textLabel.text = @"阿里巴巴与四十大盗";
    }else{
        cell.textLabel.text = @"小白兔与大灰狼";
    }
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    //    cell.selectionStyle = UITableViewCellSelectionStyleNone;//设置点击后没有效果
    
    return cell;
    
}


@end
