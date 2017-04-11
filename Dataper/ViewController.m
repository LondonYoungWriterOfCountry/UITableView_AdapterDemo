//
//  ViewController.m
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import "ViewController.h"
#import "TableView_ViewModel.h"
#import "TableViewCell.h"
#import "TableViewAdatper.h"
#import "UITableViewModel.h"

static NSString * const cellID = @"cellID";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)TableView_ViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[TableView_ViewModel alloc]init];
    
    [self.view addSubview:self.tableView];
  
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewModel.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    UITableViewModel *model = self.viewModel.dataArray[indexPath.row];
    return [TableViewAdatper setCellMessages:cell Model:model];
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.estimatedRowHeight = 104;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        _tableView.showsVerticalScrollIndicator = NO;
        [_tableView registerClass:[TableViewCell class] forCellReuseIdentifier:cellID];
    }
    return _tableView;
}

@end
