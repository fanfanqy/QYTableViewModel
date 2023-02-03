//
//  QYBaseRowConfig.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseRowConfig.h"
#import "UIImage+QYBundle.h"

#define QYTableViewModelLineLeft 15
#define QYTableViewModelLineRight 15
#define QYTableViewModelCardImagePadding 3
#define QYTableViewModelPaddingLeft 11
#define QYTableViewModelPaddingRight 11
#define QYTableViewModelCapInset 8*2

@implementation QYBaseRowConfig

- (CGFloat)lineLeft {
    if (_lineLeft == 0) {
        _lineLeft = QYTableViewModelLineLeft;
    }
    return _lineLeft;
}

- (CGFloat)lineRight {
    if (_lineRight == 0) {
        _lineRight = QYTableViewModelLineRight;
    }
    return _lineRight;
}

- (CGFloat)height{
    if (_height == 0 || !_height) {
        _height = UITableViewAutomaticDimension;
        
    }
    return _height;
}

- (void)setCardShadowType:(CardShadowType)cardShadowType {
    _cardShadowType = cardShadowType;
    switch (_cardShadowType) {
        case CardShadowNone:
            self.cardImagePadding = UIEdgeInsetsZero;
            break;
            
        case CardShadowTop:
            self.backGroundColor = [UIColor clearColor];
            self.cardImagePadding = UIEdgeInsetsMake(-QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding, 0, -QYTableViewModelCardImagePadding);
            break;
            
        case CardShadowBottom:
            self.hideBottomLine = YES;
            self.backGroundColor = [UIColor clearColor];
            self.cardImagePadding = UIEdgeInsetsMake(0, -QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding);
            break;
            
        case CardShadowCenter:
            self.backGroundColor = [UIColor clearColor];
            self.cardImagePadding = UIEdgeInsetsMake(0, -QYTableViewModelCardImagePadding, 0, -QYTableViewModelCardImagePadding);
            break;
            
        case CardShadowAll:
            self.hideBottomLine = YES;
            self.backGroundColor = [UIColor clearColor];
            self.cardImagePadding = UIEdgeInsetsMake(-QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding, -QYTableViewModelCardImagePadding);
            break;
            
        default:
            break;
    }
    
    switch (_cardShadowType) {
        case CardShadowNone:
            self.padding = UIEdgeInsetsZero;
            break;
            
        case CardShadowAll:
            self.padding = UIEdgeInsetsMake(-self.cardImagePadding.top, QYTableViewModelPaddingLeft, -self.cardImagePadding.bottom, QYTableViewModelPaddingRight);
            break;
            
        case CardShadowTop:
            self.padding = UIEdgeInsetsMake(-self.cardImagePadding.top, QYTableViewModelPaddingLeft, -self.cardImagePadding.bottom, QYTableViewModelPaddingRight);
            break;
            
        case CardShadowCenter:
            self.padding = UIEdgeInsetsMake(-self.cardImagePadding.top, QYTableViewModelPaddingLeft, -self.cardImagePadding.bottom, QYTableViewModelPaddingRight);
            break;
            
        case CardShadowBottom:
            self.padding =
            UIEdgeInsetsMake(-self.cardImagePadding.top, QYTableViewModelPaddingLeft, -self.cardImagePadding.bottom, QYTableViewModelPaddingRight);
            break;
            
        default:
            break;
    }
    
}

- (UIColor *)backGroundColor {
    if (!_backGroundColor) {
        _backGroundColor = [UIColor whiteColor];
    }
    return _backGroundColor;
}

- (UIImage *)shadowTopImage {
    if (!_shadowTopImage) {
        UIImage *img = [UIImage imageNamed:@"QY_element_card_bg_top"];
        img = [img resizableImageWithCapInsets:UIEdgeInsetsMake(8*2, 8*2, 0, 8*2) resizingMode:UIImageResizingModeStretch];
        return img;
        
    }
    return _shadowTopImage;
}

- (UIImage *)shadowBottomImage {
    if (!_shadowBottomImage) {
        UIImage *img = [UIImage imageNamed:@"QY_element_card_bg_bottom"];
        img = [img resizableImageWithCapInsets:UIEdgeInsetsMake(0, QYTableViewModelCapInset, QYTableViewModelCapInset, QYTableViewModelCapInset) resizingMode:UIImageResizingModeStretch];
        return img;
        
    }
    return _shadowBottomImage;
    
}

- (UIImage *)shadowCenterImage {
    if (!_shadowCenterImage) {
        UIImage *img = [UIImage imageNamed:@"QY_element_card_bg_middle"];
        img = [img resizableImageWithCapInsets:UIEdgeInsetsMake(0, QYTableViewModelCapInset, 0, QYTableViewModelCapInset) resizingMode:UIImageResizingModeStretch];
        return img;
        
    }
    return _shadowCenterImage;
    
}

- (UIImage *)shadowAllImage {
    if (!_shadowAllImage) {
        UIImage *img = [UIImage imageNamed:@"QY_element_card_bg_all"];
        img = [img resizableImageWithCapInsets:UIEdgeInsetsMake(QYTableViewModelCapInset, QYTableViewModelCapInset, QYTableViewModelCapInset, QYTableViewModelCapInset) resizingMode:UIImageResizingModeStretch];// 四个数值对应图片中距离上、左、下、右边界的不拉伸部分的px范围宽度
        return img;
        
    }
    return _shadowAllImage;
}

@end
