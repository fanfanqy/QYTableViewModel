//
//  QYlickEffectView.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/23.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYClickEffectView.h"

@interface QYClickEffectView ()
@property(nonatomic, unsafe_unretained) CGFloat oldAlpha;
@end

@implementation QYClickEffectView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self commonInit];
}

- (instancetype)init {
    if (self = [super init]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)setOnEffect:(BOOL)onEffect {
    _onEffect = onEffect;
    
}

- (void)commonInit {
    self.oldAlpha = self.alpha;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    if (_onEffect) {
        self.alpha = self.oldAlpha / 3;
    }
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    if (_onEffect) {
        self.alpha = self.oldAlpha;
    }
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    if (_onEffect) {
        self.alpha = self.oldAlpha;
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    
}

@end
