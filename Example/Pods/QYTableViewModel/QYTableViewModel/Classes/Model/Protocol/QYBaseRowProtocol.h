//
//  QYBaseRowProtocol.h
//  QYTableViewModel
//
//  Created by 范庆宇 on 2023/114.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QYBaseUIConfigProtocol.h"
#import "QYBaseCardUIConfigProtocol.h"

typedef void(^NextBlock)(id _Nullable object);

@protocol QYBaseRowProtocol <NSObject>
@optional

@property(nonatomic,strong)id model;
@property(nonatomic,strong)Class cellClass;
@property(nonatomic,copy)NextBlock nextBlock;

@property(nonatomic,strong)id<QYBaseUIConfigProtocol,QYBaseCardUIConfigProtocol> config;

@end

