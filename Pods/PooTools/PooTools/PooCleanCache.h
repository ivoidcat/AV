//
//  PooCleanCache.h
//  CloudGateCustom
//
//  Created by mouth on 2018/5/16.
//  Copyright © 2018年 邓杰豪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PooCleanCache : NSObject
/**
 *  获取缓存大小
 */
+ (NSString *)getCacheSize;

/**
 *  清理缓存
 */
+ (BOOL)clearCaches;
@end
