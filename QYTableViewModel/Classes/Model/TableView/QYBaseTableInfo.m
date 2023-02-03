//
//  QYBaseTableInfo.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseTableInfo.h"

@implementation QYBaseTableInfo

- (NSMutableDictionary *)dataDic {
    if (!_dataDic) {
        _dataDic = [NSMutableDictionary dictionary];
        
    }
    return _dataDic;
}

@end
