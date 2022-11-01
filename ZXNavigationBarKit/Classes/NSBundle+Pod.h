//
//  NSBundle+CHSPod.h
//  ChangeEnvironmentManager
//
//  Created by simon on 2021/7/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (CHSPod)

+ (instancetype)bundleWithPodAssetsForClass:(Class)class;

+ (instancetype)bundleWithPodAssetsForClass:(Class)class bundleName:(NSString *)resource;

+ (instancetype)bundleWithPodForClass:(Class)class;

@end

NS_ASSUME_NONNULL_END
