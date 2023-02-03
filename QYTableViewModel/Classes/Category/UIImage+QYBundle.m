//
//  UIImage+QYBundle.m
//  Pods-QYTableViewModel_Example
//
//  Created by 范庆宇 on 2023/2/3.
//

#import "UIImage+QYBundle.h"

@implementation UIImage (QYBundle)

+(UIImage *)qy_imageWithBundleName:(NSString *)bundleName imageName:(NSString *)imageName
{
    
    if ([bundleName containsString:@".bundle"]) {
        bundleName = [bundleName componentsSeparatedByString:@".bundle"].firstObject;
    }
    
    //获取关联bundle
    //通过当前类取关联bundle
    NSURL *associateBundleURL = [[NSBundle mainBundle] URLForResource:bundleName withExtension:@"bundle"];
    if (!associateBundleURL) {
        associateBundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
        associateBundleURL = [associateBundleURL URLByAppendingPathComponent:bundleName];
        associateBundleURL = [associateBundleURL URLByAppendingPathExtension:@"framework"];
        NSBundle *associateBunle = [NSBundle bundleWithURL:associateBundleURL];
        associateBundleURL = [associateBunle URLForResource:bundleName withExtension:@"bundle"];
    }
    NSAssert(associateBundleURL, @"取不到关联bundle");
    //去源文件所在bundle
    NSBundle *bundle = [NSBundle bundleWithURL:associateBundleURL];
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

@end
