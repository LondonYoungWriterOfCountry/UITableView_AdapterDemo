//
//  TableViewAdatper.m
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import "TableViewAdatper.h"

@implementation TableViewAdatper

+ (TableViewCell *)setCellMessages:(TableViewCell *)cell Model:(UITableViewModel *)model{
    
    cell.nameLabel.text = model.name;
    cell.ageLabel.text = [NSString stringWithFormat:@"%ld",model.age];
    
    return cell;
}
@end
