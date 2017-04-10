//
//  TableViewAdatper.h
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewCell.h"
#import "UITableViewModel.h"

@interface TableViewAdatper : NSObject

+ (TableViewCell *)setCellMessages:(TableViewCell *)cell Model:(UITableViewModel *)model;

@end
