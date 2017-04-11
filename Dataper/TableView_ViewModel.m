//
//  TableView_ViewModel.m
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import "TableView_ViewModel.h"
#import "UITableViewModel.h"

@implementation TableView_ViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self loadData];
    }
    return self;
}

- (void)loadData{
    
    self.dataArray =@[
                      [UITableViewModel loadMeesagesWithString:@"fssfjgnsjgnskdjfngskjfndgjknx.,nmcnb,.mcvnbdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkz.xjdfnjknbfakjbfKSJDbfkz.jsdbf.zbdf" numer:3434],
                      [UITableViewModel loadMeesagesWithString:@"fzs.d/mfz/sdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkz.dmf/zksmdfk/zsmdf/knzsdkgnj>BGKJBSDkgjbzs.dmz" numer:56],
                      [UITableViewModel loadMeesagesWithString:@"mfmdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzcbm" numer:3434534534],
                      [UITableViewModel loadMeesagesWithString:@"xczsmd vzsdm v,mzvn" numer:3234434],
                      [UITableViewModel loadMeesagesWithString:@"fzd., vxzzsdnfdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzSDBfSDBVf,hSVfhjvsehjfvabsdljgbajksdc v vzxxgj" numer:124],
                      [UITableViewModel loadMeesagesWithString:@"k.gdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzdjfngskjfndgjknx.,nmcnb,.mcvnb.xjdfnjknbfakjbfKSJDbfkzhjk" numer:789]];
    
}

@end
