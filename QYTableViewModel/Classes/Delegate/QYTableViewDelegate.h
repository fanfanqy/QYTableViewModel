//
//  QYTableViewDelegate.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYBaseTableInfo.h"
#import "QYBaseSection.h"
#import "QYBaseRow.h"

NS_ASSUME_NONNULL_BEGIN

@protocol QYSrollDelegate <NSObject>

@optional
- (void)scroll:(UIScrollView *)scrollView;

@end

@interface QYTableViewDelegate : NSObject<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)QYBaseTableInfo *tableInfo;
@property(nonatomic,weak)id<QYSrollDelegate> delegate;

- (void)loadData:(QYBaseTableInfo *)tableInfo;

@end

NS_ASSUME_NONNULL_END
