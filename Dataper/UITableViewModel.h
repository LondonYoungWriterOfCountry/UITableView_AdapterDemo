//
//  UITableViewModel.h
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITableViewModel : NSObject

@property (nonatomic,copy)NSString *name;
@property (nonatomic,assign)NSInteger age;
+ (UITableViewModel *)loadMeesagesWithString:(NSString *)name numer:(NSInteger)age;
@end
