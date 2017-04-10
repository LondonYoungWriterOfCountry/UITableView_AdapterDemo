//
//  UITableViewModel.m
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import "UITableViewModel.h"

@implementation UITableViewModel
+ (UITableViewModel *)loadMeesagesWithString:(NSString *)name numer:(NSInteger)age{
    
    UITableViewModel *model = [[UITableViewModel alloc]init];
    model.name = name;
    model.age = age;
    return model;
}
@end
