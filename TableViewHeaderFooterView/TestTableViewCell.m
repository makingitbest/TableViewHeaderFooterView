//
//  TestTableViewCell.m
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "TestTableViewCell.h"
#import "StudentsModel.h"
#import "UIImageView+WebCache.h"

@interface TestTableViewCell ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel     *studentName;
@property (nonatomic, strong) UILabel     *studentGender;

@end

@implementation TestTableViewCell

- (void)setUpTableView {
    
    self.backgroundColor = [UIColor clearColor];
    
}

- (void)buildTableViewSubviews {
    
    self.iconImageView                     = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 70, 70)];
    self.iconImageView.contentMode         = UIViewContentModeScaleAspectFill;
    self.iconImageView.layer.masksToBounds = YES;
    self.iconImageView.layer.cornerRadius  = 10;
    self.iconImageView.layer.borderWidth   = 1;
    self.iconImageView.layer.borderColor   = [UIColor blueColor].CGColor;
    [self addSubview:self.iconImageView];
    
    self.studentName               = [[UILabel alloc] initWithFrame:CGRectMake(100, 5, 100, 30)];
    self.studentName.textColor     = [UIColor blueColor];
    self.studentName.font          = [UIFont systemFontOfSize:14];
    self.studentName.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.studentName];
    
    self.studentGender               = [[UILabel alloc] initWithFrame:CGRectMake(100, 40, 100, 30)];
    self.studentGender.textColor     = [UIColor blueColor];
    self.studentGender.font          = [UIFont systemFontOfSize:14];
    self.studentGender.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.studentGender];
    
}

- (void)loadTableViewData {
    
    StudentsModel *model = self.data;
    
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.studentPicture]];
    
    self.studentName.text    = model.studentName;
    
    self.studentGender.text  = model.studentGender;
}

@end
