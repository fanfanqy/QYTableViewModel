//
//  QYBaseCellProtocol.h
//  QYTableViewModel
//
//  Created by 范庆宇 on 2023/114.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QYBaseRowProtocol.h"

@protocol QYBaseCellProtocol <NSObject>

- (void)fillData:(id<QYBaseRowProtocol>)row;

- (void)createUI;
- (void)configConstrains;
- (void)remakeConstrains;

@end

