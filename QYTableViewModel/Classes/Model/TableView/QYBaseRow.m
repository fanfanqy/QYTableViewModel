//
//  QYBaseRow.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseRow.h"
#import "QYBaseRowConfig.h"
@implementation QYBaseRow

- (instancetype)initWithModel:(id)model cellClass:(Class)cls uiconfig:(id<QYBaseUIConfigProtocol,QYBaseCardUIConfigProtocol>)config
{
    self = [super init];
    if (self) {
        self.model = model;
        self.cellClass = cls;
        self.config = config;
        
    }
    return self;
}

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass {
    QYBaseRow *row = [QYBaseRow createRowWithModel:model cellClass:cellClass cardShawodType:CardShadowNone height:UITableViewAutomaticDimension];
    return row;
    
}

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass cardShawodType:(CardShadowType)type {
    QYBaseRow *row = [QYBaseRow createRowWithModel:model cellClass:cellClass cardShawodType:type height:UITableViewAutomaticDimension];
    return row;
    
}

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass height:(CGFloat)height {
    QYBaseRow *row = [QYBaseRow createRowWithModel:model cellClass:cellClass cardShawodType:CardShadowNone height:height];
    return row;
    
}

+ (QYBaseRow *)createRowWithModel:(id)model cellClass:(Class)cellClass cardShawodType:(CardShadowType)type height:(CGFloat)height {
    QYBaseRowConfig *config = [[QYBaseRowConfig alloc]init];
    config.cardShadowType = type;
    if (height == UITableViewAutomaticDimension) {
        config.height = UITableViewAutomaticDimension;

    }else {
        config.height = height + config.padding.top + config.padding.bottom;

    }
    QYBaseRow *row = [[QYBaseRow alloc]initWithModel:model cellClass:cellClass uiconfig:config];
    return row;
    
}

@end



