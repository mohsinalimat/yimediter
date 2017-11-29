//
//  YIMEditerStyleBaseCell.m
//  yimediter
//
//  Created by ybz on 2017/11/21.
//  Copyright © 2017年 ybz. All rights reserved.
//

#import "YIMEditerStyleBaseCell.h"

@implementation YIMEditerStyleBaseCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setup];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

-(void)setup{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self bottomLineView];
}

-(void)layoutSubviews{
    [super layoutSubviews];
}
-(void)didAddSubview:(UIView *)subview{
    [super didAddSubview:subview];
    [self bringSubviewToFront:self.bottomLineView];
}

-(UIView*)bottomLineView{
    if (!_bottomLineView) {
        _bottomLineView = [[UIView alloc]init];
        _bottomLineView.backgroundColor =  [UIColor colorWithRed:0xf3/255.0 green:0xf3/255.0 blue:0xf3/255.0 alpha:1];
        _bottomLineView.frame = CGRectMake(0, CGRectGetHeight(self.frame) - 1, CGRectGetWidth(self.frame), 1);
        _bottomLineView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        [self addSubview:_bottomLineView];
    }
    return _bottomLineView;
}

@end
