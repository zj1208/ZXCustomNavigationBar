//
//  NSBundle+CHSPod.m
//  ChangeEnvironmentManager
//
//  Created by simon on 2021/7/21.
//

#import "NSBundle+Pod.h"

@implementation NSBundle (CHSPod)

+ (instancetype)bundleWithPodAssetsForClass:(Class)class
{
    static NSBundle *bundle = nil;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPodAssetsForClass:class bundleName:NSStringFromClass(class)];
    }
    return bundle;
}

+ (instancetype)bundleWithPodAssetsForClass:(Class)class
                                   bundleName:(nonnull NSString *)bundleName
{
    NSBundle *frameworkBundle = [NSBundle bundleForClass:class];
    NSString *resourcePath = [frameworkBundle pathForResource:bundleName ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:resourcePath];
    return bundle;
}

+ (instancetype)bundleWithPodForClass:(Class)class
{
    static NSBundle *bundle = nil;
    if (bundle == nil) {
        bundle = [NSBundle bundleForClass:class];
    }
    return bundle;
}

@end
