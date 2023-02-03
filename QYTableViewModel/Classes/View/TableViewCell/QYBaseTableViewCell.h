//
//  QYBaseTableViewCell.h
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QYBaseCellProtocol.h"
#import "QYClickEffectView.h"
#import "QYBaseRow.h"

@interface QYBaseTableViewCell : UITableViewCell<QYBaseCellProtocol>

@property(nonatomic,strong)IBInspectable QYClickEffectView *cornerContainerView;

@property(nonatomic,strong)id<QYBaseRowProtocol> row;
//@property(nonatomic,strong)QYBaseRow *row;

- (void)fillData:(id<QYBaseRowProtocol>)row;
//- (void)fillData:(QYBaseRow *)row;

- (void)createUI;
- (void)configConstrains;
- (void)remakeConstrains;

@end

//NS_ASSUME_NONNULL_END
