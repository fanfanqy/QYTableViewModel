//
//  QYBaseRow.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QYBaseRowProtocol.h"


@interface QYBaseRow : NSObject<QYBaseRowProtocol>

NS_ASSUME_NONNULL_BEGIN

@property(nonatomic,strong)id model;
@property(nonatomic,strong)Class cellClass;
@property(nonatomic,copy)NextBlock nextBlock;

@property(nonatomic,strong)id<QYBaseUIConfigProtocol,QYBaseCardUIConfigProtocol> config;

- (instancetype)initWithModel:(id)model cellClass:(Class)cls uiconfig:(id<QYBaseUIConfigProtocol,QYBaseCardUIConfigProtocol>)config;

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass;

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass height:(CGFloat)height;

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass cardShawodType:(CardShadowType)type;

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass cardShawodType:(CardShadowType)type height:(CGFloat)height;

NS_ASSUME_NONNULL_END
@end




