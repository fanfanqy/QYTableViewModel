//
//  QYBaseSection.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseSection.h"

@implementation QYBaseSection

- (NSMutableArray *)cellInfoArray {
    if (!_cellInfoArray) {
        _cellInfoArray = [NSMutableArray array];
        
    }
    return _cellInfoArray;
}

- (CGFloat)headerHeight
{
    return _headerHeight != 0 ? _headerHeight : 0.00001;
}

- (CGFloat)footerHeight
{
    return _footerHeight != 0 ? _footerHeight : 0.00001;
}

@end
