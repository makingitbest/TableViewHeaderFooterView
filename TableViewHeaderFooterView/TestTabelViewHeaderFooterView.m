//
//  TestTabelViewHeaderFooterView.m
//  TableViewHeaderFooterView
//
//  Created by WangQiao on 16/7/30.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "TestTabelViewHeaderFooterView.h"
#import "UIImageView+WebCache.h"
#import "ClassesModel.h"

@interface TestTabelViewHeaderFooterView ()

@property (nonatomic, strong) UIImageView *pictureView;
@property (nonatomic, strong) UILabel     *nameLable;

@end

@implementation TestTabelViewHeaderFooterView

- (void)setUpHeaderFooterView {
    
    [self setHeaderFooterBackgroundColor:[UIColor yellowColor]];
    
}

- (void)bulidHeaderFooterSubViews {
    
    self.pictureView                     = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.pictureView.contentMode         = UIViewContentModeScaleAspectFill;
    self.pictureView.layer.masksToBounds = YES;
    self.pictureView.layer.cornerRadius  = 25;
    self.pictureView.clipsToBounds       = YES;
    self.pictureView.layer.borderWidth   = 2;
    [self addSubview:self.pictureView];
    
    self.nameLable               = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 100, 40)];
    self.nameLable.textColor     = [UIColor blueColor];
    self.nameLable.textAlignment = NSTextAlignmentLeft;
    self.nameLable.font          = [UIFont systemFontOfSize:15];
    [self addSubview:self.nameLable];
}

- (void)loadHeaderFooterData {
    
    ClassesModel *model = self.data;
    
    [self.pictureView sd_setImageWithURL:[NSURL URLWithString:model.classImageView] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        
    }];
    
    self.nameLable.text = model.className;
}


@end
