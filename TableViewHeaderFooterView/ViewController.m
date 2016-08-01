//
//  ViewController.m
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"
#import "TestTabelViewHeaderFooterView.h"
#import "ClassesModel.h"
#import "StudentsModel.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)NSMutableArray <ClassesModel*> *dataArray;
@property (nonatomic, strong)UITableView    *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataArray = [NSMutableArray array];
    
    [self createDataSource];
    
    [self createTableViewAndHeaderFootView];
}

- (void)createTableViewAndHeaderFootView {
    
    self.tableView                = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.delegate       = self;
    self.tableView.dataSource     = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[TestTableViewCell class] forCellReuseIdentifier:@"TestTableViewCell"];
    [self.tableView registerClass:[TestTabelViewHeaderFooterView class] forHeaderFooterViewReuseIdentifier:@"HeaderView"];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    ClassesModel *classesModel = self.dataArray[section];
    
    return classesModel.studentModelArray.count;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ClassesModel *classesModel  = self.dataArray[indexPath.section];
    StudentsModel *studentModel = classesModel.studentModelArray[indexPath.row];
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestTableViewCell"];
    cell.data                 = studentModel;
    cell.indexPath            = indexPath;
    [cell loadTableViewData];
    return cell;
    
    
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    ClassesModel *classesModel                  = self.dataArray[section];
    CustomTableViewHeaderFooterView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"HeaderView"];
    headerView.data                             = classesModel;
    headerView.section                          = section;
    [headerView loadHeaderFooterData];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 80;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    return 50;
}

- (void)createDataSource {
    
    {
        ClassesModel *classesModel  = [[ClassesModel alloc] init];
        classesModel.className      = @"一班";
        classesModel.classImageView = @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=34480776be0e7bec238f0be51a1e950e/b3fb43166d224f4a2ded606a0ff790529822d156.jpg";
        [self.dataArray addObject:classesModel];
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小花";
            studentModel.studentPicture = @"http://pic.cnblogs.com/avatar/451793/20150429134832.png";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小草";
            studentModel.studentPicture = @"http://pic.cnblogs.com/avatar/450136/20160129165246.png";
            studentModel.studentGender  = @"男";
            [classesModel.studentModelArray addObject:studentModel];
        }

        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小画";
            studentModel.studentPicture = @"http://pic.cnblogs.com/avatar/607542/20151017230728.png";
            studentModel.studentGender  = @"男";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小马";
            studentModel.studentPicture = @"http://pic.cnblogs.com/avatar/781589/20160113172410.png";
            studentModel.studentGender  = @"男";
            [classesModel.studentModelArray addObject:studentModel];
        }
    }
    
    {
        ClassesModel *classesModel  = [[ClassesModel alloc] init];
        classesModel.className      = @"二班";
        classesModel.classImageView = @"http://pic25.nipic.com/20121112/5955207_224247025000_2.jpg";
        [self.dataArray addObject:classesModel];
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小夏";
            studentModel.studentPicture = @"http://g.hiphotos.baidu.com/image/pic/item/6c224f4a20a446230761b9b79c22720e0df3d7bf.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小兰";
            studentModel.studentPicture = @"http://e.hiphotos.baidu.com/image/pic/item/94cad1c8a786c917139f2a9ccb3d70cf3ac757f2.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小萌";
            studentModel.studentPicture = @"http://b.hiphotos.baidu.com/image/pic/item/fd039245d688d43f76b17dd4781ed21b0ef43bf8.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小川";
            studentModel.studentPicture = @"http://b.hiphotos.baidu.com/image/pic/item/f703738da9773912825f6388fc198618377ae2da.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
    }

    {
        ClassesModel *classesModel  = [[ClassesModel alloc] init];
        classesModel.className      = @"三班";
        classesModel.classImageView = @"http://img3.3lian.com/2013/c2/64/d/69.jpg";
        [self.dataArray addObject:classesModel];
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小美";
            studentModel.studentPicture = @"http://bcs.img.r1.91.com/data/upload/2014/09_13/23/201409132316102240.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小苏";
            studentModel.studentPicture = @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=34480776be0e7bec238f0be51a1e950e/b3fb43166d224f4a2ded606a0ff790529822d156.jpg";
            studentModel.studentGender  = @"男";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小龙";
            studentModel.studentPicture = @"http://rescdn.qqmail.com/dyimg/20131218/7344ED6A7AF9.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小仙";
            studentModel.studentPicture = @"http://b.hiphotos.baidu.com/zhidao/pic/item/3c6d55fbb2fb4316cc29db3322a4462309f7d341.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小苏";
            studentModel.studentPicture = @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=34480776be0e7bec238f0be51a1e950e/b3fb43166d224f4a2ded606a0ff790529822d156.jpg";
            studentModel.studentGender  = @"男";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小龙";
            studentModel.studentPicture = @"http://rescdn.qqmail.com/dyimg/20131218/7344ED6A7AF9.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }
        
        {
            StudentsModel *studentModel = [[StudentsModel alloc] init];
            studentModel.studentName    = @"小仙";
            studentModel.studentPicture = @"http://b.hiphotos.baidu.com/zhidao/pic/item/3c6d55fbb2fb4316cc29db3322a4462309f7d341.jpg";
            studentModel.studentGender  = @"女";
            [classesModel.studentModelArray addObject:studentModel];
        }

    }

}

@end
