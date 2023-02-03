//
//  QYBaseTableInfo.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QYBaseTableInfo : NSObject
@property(nonatomic,strong)NSMutableArray<NSString *> *sectionIndexTitles;
/*
 @{
 @"0":Section0
 @"1":Section1
 }
 */
@property(nonatomic,strong)NSMutableDictionary *dataDic;

@end

NS_ASSUME_NONNULL_END
