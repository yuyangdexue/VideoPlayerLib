//
//  VideoPlayerLib.m
//  VideoPlayerLib
//
//  Created by yuyang on 2021/9/29.
//

#import "VideoPlayerLib.h"

@implementation VideoPlayerLib
                                                                                                                                        
+ (instancetype)log:(dispatch_block_t) t{
    VideoPlayerLib *lib = [[VideoPlayerLib alloc] init];
    lib.tp = t;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (lib.tp) {
            lib.tp();
        }
    });
    return lib;
}

+ (void)log1log:(dispatch_block_t) t{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (t) {
            t();
        }
    });
}

@end
