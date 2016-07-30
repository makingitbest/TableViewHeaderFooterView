//
//  CustomTableViewCell.m
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUpTableView];
        
        [self buildTableViewSubviews];
    }
    
    return self;
}

- (void)setUpTableView {

}

- (void)buildTableViewSubviews {

}

- (void)loadTableViewData {

}

@end
