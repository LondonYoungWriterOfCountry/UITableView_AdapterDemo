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
    
    self.dataArray =@[[UITableViewModel loadMeesagesWithString:@"fsdf" numer:3434],
                      [UITableViewModel loadMeesagesWithString:@"fz" numer:56],
                      [UITableViewModel loadMeesagesWithString:@"mfmcbm" numer:3434534534],
                      [UITableViewModel loadMeesagesWithString:@"xcvn" numer:3234434],
                      [UITableViewModel loadMeesagesWithString:@"fgj" numer:124],
                      [UITableViewModel loadMeesagesWithString:@"k.ghjk" numer:789]];
    
}

@end
