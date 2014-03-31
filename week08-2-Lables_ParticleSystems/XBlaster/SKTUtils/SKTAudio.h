//
//  SKTAudio.h
//  SKTUtils
//
//  Created by Billy Ryu on 3/30/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

// Chapters 1-3
#import "SKTAudio.h"
@import AVFoundation;

@interface SKTAudio : NSObject

+ (instancetype)sharedInstance;
- (void)playBackgroundMusic:(NSString *)filename;
- (void)pauseBackgroundMusic;
- (void)playSoundEffect:(NSString*)filename;

@end