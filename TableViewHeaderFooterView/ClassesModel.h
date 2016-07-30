//
//  ClassesModel.h
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentsModel.h"

@interface ClassesModel : NSObject

@property (nonatomic, strong) NSMutableArray <StudentsModel *> *studentModelArray;

@property (nonatomic, strong) NSString *className;
@property (nonatomic, strong) NSString *classImageView;

@end
