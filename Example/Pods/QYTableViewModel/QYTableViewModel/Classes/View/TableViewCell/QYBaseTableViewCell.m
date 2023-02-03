//
//  QYBaseTableViewCell.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseTableViewCell.h"

@interface QYBaseTableViewCell ()

@property(nonatomic, strong) UIImageView *cardImageView;

@end

@implementation QYBaseTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self createUI];
        [self configConstrains];
        
    }
    return self;
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self remakeConstrains];
    
}

- (void)createUI {
    [self.contentView addSubview:self.cornerContainerView];
    [self.cornerContainerView addSubview:self.cardImageView];
    
}

- (void)configConstrains {
    
    [self.cornerContainerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(self.row.config.padding);
    }];
    
    [self.cardImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.cornerContainerView).with.insets(self.row.config.cardImagePadding);
        
    }];
    
}

- (void)remakeConstrains {
    [self.cornerContainerView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(self.row.config.padding);
        
    }];
    
    [self.cardImageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.cornerContainerView).with.insets(self.row.config.cardImagePadding);
        
    }];
    
}

//- (void)fillData:(id<QYBaseRowProtocol>)row
- (void)fillData:(QYBaseRow *)row
{
    self.row = row;

    [self cornerContainerViewDefaultColor];
    _cornerContainerView.layer.cornerRadius = row.config.cornerRadius;
    _cornerContainerView.onEffect = !row.config.hideHighlightedView;
    
    switch (row.config.cardShadowType) {
        case CardShadowNone:
            _cardImageView.image = nil;
            if (row.config.shadowColor) {
                _cornerContainerView.layer.shadowColor = row.config.shadowColor.CGColor;
                _cornerContainerView.layer.shadowOffset = row.config.shadowOffset;
                _cornerContainerView.layer.shadowOpacity = row.config.shadowOpacity;
                _cornerContainerView.layer.shadowRadius = row.config.shadowRadius;
                
            }else {
                _cornerContainerView.layer.shadowColor = nil;
                
            }
            break;
            
        case CardShadowTop:
            _cardImageView.image = row.config.shadowTopImage;
            break;
            
        case CardShadowBottom:
            _cardImageView.image = row.config.shadowBottomImage;
            break;
            
        case CardShadowCenter:
            _cardImageView.image = row.config.shadowCenterImage;
            break;
            
        case CardShadowAll:
            _cardImageView.image = row.config.shadowAllImage;
            break;
            
        default:
            break;
    }
    
    if (row.config.hideBottomLine) {
        self.separatorInset = UIEdgeInsetsMake(-1000, -1000, 1000, 1000);
        
    }else {
        self.separatorInset = UIEdgeInsetsMake(self.separatorInset.top,row.config.padding.left + row.config.lineLeft, self.separatorInset.bottom, row.config.padding.right + row.config.lineRight);
        
    }
    
}

- (void)cornerContainerViewDefaultColor {
    if (self.row.config.backGroundColor) {
        self.cornerContainerView.backgroundColor = self.row.config.backGroundColor;
        
    }else {
        self.cornerContainerView.backgroundColor = [UIColor whiteColor];
        
    }
    
}

// 配置cell 自定义高亮状态
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    [super setHighlighted:highlighted animated:animated];
    if (!self.row.config.hideHighlightedView) {
        if (highlighted) {
            self.cornerContainerView.backgroundColor = [UIColor groupTableViewBackgroundColor];
            
        } else {
            // 增加延迟消失动画效果，提升用户体验
            [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                [self cornerContainerViewDefaultColor];
                
            } completion:nil];
        }
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (!self.row.config.hideHighlightedView) {
        if (selected) {
            self.cornerContainerView.backgroundColor = [UIColor groupTableViewBackgroundColor];
            
        } else {
            [self cornerContainerViewDefaultColor];
            
        }
        
    }
    
}

- (UIImageView *)cardImageView {
    if (!_cardImageView) {
        _cardImageView = [[UIImageView alloc]initWithFrame:CGRectZero];
        _cardImageView.frame = CGRectZero;
        
    }
    return _cardImageView;
    
}

- (QYClickEffectView *)cornerContainerView {
    if (!_cornerContainerView) {
        _cornerContainerView = [[QYClickEffectView alloc]initWithFrame:CGRectZero];
        
    }
    return _cornerContainerView;
    
}


@end
