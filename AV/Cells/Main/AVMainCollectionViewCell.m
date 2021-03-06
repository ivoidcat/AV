//
//  AVMainCollectionViewCell.m
//  AV
//
//  Created by H-L on 2018/8/5.
//  Copyright © 2018年 邓杰豪. All rights reserved.
//

#import "AVMainCollectionViewCell.h"

@implementation AVMainCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self confingSubViews];
    }
    return self;
}

-(void)confingSubViews
{
    self.cellImage = [UIImageView new];
    [self.contentView addSubview:self.cellImage];
    [self.cellImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(self.contentView);
    }];
    
    UIView *bottomView = [UIView new];
    bottomView.backgroundColor = kRGBAColor(1, 1, 1, 0.6);
    [self.contentView addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.contentView);
        make.height.offset(30);
        make.bottom.equalTo(self.contentView);
    }];
    
    self.cellVideoNum = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.cellVideoNum setTitleColor:AppWhite forState:UIControlStateNormal];
    self.cellVideoNum.titleLabel.font = AppFontNormal;
    [self.cellVideoNum setImage:kImageNamed(@"image_collections_white") forState:UIControlStateNormal];
    [self.cellVideoNum layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft imageTitleSpace:0];
    kViewBorderRadius(self.cellVideoNum, 5, 1, kClearColor);
    [self.contentView addSubview:self.cellVideoNum];
    [self.cellVideoNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.centerY.equalTo(bottomView.mas_centerY);
        make.right.equalTo(bottomView).offset(-ViewSpace);
    }];
    
    self.cellName = [UILabel new];
    self.cellName.font = AppFontNormal;
    self.cellName.textColor = AppWhite;
    self.cellName.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:self.cellName];
    [self.cellName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.centerY.equalTo(bottomView.mas_centerY);
        make.left.equalTo(bottomView).offset(ViewSpace);
        make.right.equalTo(self.cellVideoNum).offset(-ViewSpace);
    }];
}

@end
