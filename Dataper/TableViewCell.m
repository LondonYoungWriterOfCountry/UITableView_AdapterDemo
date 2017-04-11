//
//  TableViewCell.m
//  Dataper
//
//  Created by tederen on 2017/4/6.
//  Copyright © 2017年 tederen. All rights reserved.
//

#import "TableViewCell.h"
#import "ZXPAutoLayout.h"
@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.ageLabel];
        [self autolayoutUI];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
   
}
- (void)autolayoutUI{
    
    [_nameLabel zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.leftSpace(10);
        layout.rightSpace(10);
        layout.topSpace(10);
        layout.bottomSpaceByView(_ageLabel, 10);
        layout.autoHeight();
        
    }];
    
    [_ageLabel zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.leftSpace(10);
        layout.rightSpace(10);
        layout.bottomSpace(10);
        layout.autoHeight();
        
    }];
    
}
- (UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
        _nameLabel.textColor = [UIColor orangeColor];
    }
    return _nameLabel;
}
- (UILabel *)ageLabel{
    if (!_ageLabel) {
        _ageLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, 200, 30)];
        _ageLabel.textColor = [UIColor orangeColor];
    }
    return _ageLabel;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
