//
//  CustomTableViewCell.h
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

/**
 *  传入数据
 */
@property (nonatomic, strong) id  data;

/**
 *  tableView 的 indexPath
 */
@property (nonatomic, strong) NSIndexPath *indexPath;

/**
 *  Set up the TableView basic attributes
 */
- (void)setUpTableView;

/**
 *  TableView  Interface layout
 */
- (void)buildTableViewSubviews;

/**
 *  数据传入
 */
- (void)loadTableViewData;

@end
