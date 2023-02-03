//
//  UIImage+QYBundle.h
//  Pods-QYTableViewModel_Example
//
//  Created by 范庆宇 on 2023/2/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (QYBundle)

+(UIImage *)qy_imageWithBundleName:(NSString *)bundleName imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
