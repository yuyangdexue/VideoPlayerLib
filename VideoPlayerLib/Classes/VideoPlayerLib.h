//
//  VideoPlayerLib.h
//  VideoPlayerLib
//
//  Created by yuyang on 2021/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoPlayerLib : NSObject

@property(nonatomic,copy)dispatch_block_t tp;

+ (instancetype)log:(dispatch_block_t) t;

+ (void)log1log:(dispatch_block_t) t;


@end

NS_ASSUME_NONNULL_END
