//
//  ViewController.m
//  设计模式
//
//  Created by zhougj on 15/6/23.
//  Copyright (c) 2015年 iiseeuu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dataArray;
@property (strong, nonatomic) NSMutableArray *sectionArray;
@property (strong, nonatomic) IBOutlet UITextField *textField1;

@end

@implementation ViewController

/**
 *  类图关系:泛化 = 实现 >组合 >聚合 >关联->依赖
 泛化 Generalization ：是一种继承关系
 实现:Realization
 组合:Composition
 关联:Aggregation
 依赖:Dependency
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    _dataArray = [NSMutableArray arrayWithObjects:@"Factory",@"1",@"2",@"3", nil];
    _sectionArray = [NSMutableArray arrayWithObjects:@"对象创建", nil];
    _tableView.tableFooterView = [UIView new];
    
    //取消掉默认的滑动
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _sectionArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    view.backgroundColor = [UIColor yellowColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    label.text = _sectionArray[section];
    [view addSubview:label];
    return view;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *identifier = [_dataArray[indexPath.row] stringByAppendingString:@"ViewControllerSegue"];
    [self performSegueWithIdentifier:identifier sender:nil];
}


@end
