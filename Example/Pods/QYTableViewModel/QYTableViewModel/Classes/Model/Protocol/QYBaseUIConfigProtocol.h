//
//  QYBaseUIConfigProtocol.h
//  QYTableViewModel
//
//  Created by 范庆宇 on 2023/114.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol QYBaseUIConfigProtocol <NSObject>

@property(nonatomic,assign)CGFloat height;

@property(nonatomic,strong)UIColor *backGroundColor;
@property(nonatomic,assign)CGFloat cornerRadius;

@property(nonatomic,assign)BOOL hideBottomLine;
@property(nonatomic,assign)CGFloat lineLeft;
@property(nonatomic,assign)CGFloat lineRight;
@property(nonatomic,assign)BOOL hideHighlightedView;

@property(nonatomic,assign)UIEdgeInsets padding;


@end

