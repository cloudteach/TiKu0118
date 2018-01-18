//
//  AboutViewController.m
//  FFTiKu
//
//  Created by tiny on 2018/1/17.
//  Copyright © 2018年 tiny. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableblew;
@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:self.tabBarItem.title leftText:nil rightText:nil];
    
    [self.view addSubview:self.tableblew];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UITableView *)tableblew
{
    if(!_tableblew) {
        _tableblew = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, SW, SH-64) style:UITableViewStylePlain];
        _tableblew.delegate = self;
        _tableblew.dataSource = self;
        
        _tableblew.estimatedRowHeight = 50;
        _tableblew.rowHeight = UITableViewAutomaticDimension;
    }
    return _tableblew;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
