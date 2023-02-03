//
//  QYBaseCardUIConfigProtocol.h
//  QYTableViewModel
//
//  Created by 范庆宇 on 2023/114.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    CardShadowNone,
    CardShadowTop,
    CardShadowBottom,
    CardShadowCenter,
    CardShadowAll,
} CardShadowType;

@protocol QYBaseCardUIConfigProtocol <NSObject>

@property(nonatomic,assign)CardShadowType cardShadowType;
@property(nonatomic,assign)UIEdgeInsets cardImagePadding;

@property(nonatomic,strong)UIImage *shadowTopImage ;
@property(nonatomic,strong)UIImage *shadowBottomImage ;
@property(nonatomic,strong)UIImage *shadowCenterImage ;
@property(nonatomic,strong)UIImage *shadowAllImage ;

@property(nonatomic,strong)UIColor *shadowColor;
@property(nonatomic,assign)CGSize shadowOffset;
@property(nonatomic,assign)CGFloat shadowOpacity;
@property(nonatomic,assign)CGFloat shadowRadius;

@end

