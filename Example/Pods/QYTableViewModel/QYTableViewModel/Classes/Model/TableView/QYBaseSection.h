//
//  QYBaseSection.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYBaseRowProtocol.h"
@interface QYBaseSection : NSObject

NS_ASSUME_NONNULL_BEGIN
@property(nonatomic,strong)NSMutableArray<id<QYBaseRowProtocol> > *cellInfoArray;

@property(nonatomic,assign)CGFloat headerHeight;

@property(nonatomic,assign)CGFloat footerHeight;

NS_ASSUME_NONNULL_END
@end


