//
//  QYBaseRowConfig.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "QYBaseUIConfigProtocol.h"
#import "QYBaseCardUIConfigProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface QYBaseRowConfig : NSObject<QYBaseUIConfigProtocol,QYBaseCardUIConfigProtocol>

@property(nonatomic,assign)CGFloat height;

@property(nonatomic,strong)UIColor *backGroundColor;
@property(nonatomic,assign)CGFloat cornerRadius;

@property(nonatomic,assign)BOOL hideBottomLine;
@property(nonatomic,assign)CGFloat lineLeft;
@property(nonatomic,assign)CGFloat lineRight;
@property(nonatomic,assign)BOOL hideHighlightedView;

@property(nonatomic,assign)UIEdgeInsets padding;
@property(nonatomic,assign)UIEdgeInsets cardImagePadding;
@property(nonatomic,assign)CardShadowType cardShadowType;

@property(nonatomic,strong)UIImage *shadowTopImage ;
@property(nonatomic,strong)UIImage *shadowBottomImage ;
@property(nonatomic,strong)UIImage *shadowCenterImage ;
@property(nonatomic,strong)UIImage *shadowAllImage ;


@property(nonatomic,strong)UIColor *shadowColor;
@property(nonatomic,assign)CGSize shadowOffset;
@property(nonatomic,assign)CGFloat shadowOpacity;
@property(nonatomic,assign)CGFloat shadowRadius;


@end

NS_ASSUME_NONNULL_END
