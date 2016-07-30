//
//  CustomTableViewHeaderFooterView.h
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewHeaderFooterView : UITableViewHeaderFooterView

/**
 *  传入数据
 */
@property (nonatomic, strong)id  data;

/**
 *  header and footer 的section
 */
@property (nonatomic) NSInteger  section;

/**
 *  setting HeaderFooterView Basic attributes
 */
- (void)setUpHeaderFooterView;

/**
 *  HeaderFooter Interface layout,add Interface controls :like , label button
 */
- (void)bulidHeaderFooterSubViews;

/**
 *  Interface data into
 */
- (void)loadHeaderFooterData;

/**
 *  change HeaderFooterView 的背景颜色
 *
 *  @param color 
 */
- (void)setHeaderFooterBackgroundColor:(UIColor *)color;

@end
