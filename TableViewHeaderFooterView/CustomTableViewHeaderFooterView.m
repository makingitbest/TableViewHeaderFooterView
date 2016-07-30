//
//  CustomTableViewHeaderFooterView.m
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "CustomTableViewHeaderFooterView.h"

@implementation CustomTableViewHeaderFooterView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {


    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        
        [self setUpHeaderFooterView];
        
        [self bulidHeaderFooterSubViews];
    }

    return self;
}

- (void)setUpHeaderFooterView {


}

- (void)bulidHeaderFooterSubViews {

}

- (void)loadHeaderFooterData {


}

- (void)setHeaderFooterBackgroundColor:(UIColor *)color {

    self.contentView.backgroundColor = color;
}

@end
