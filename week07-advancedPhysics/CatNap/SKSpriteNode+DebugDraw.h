//
//  SKSpriteNode+DebugDraw.h
//  CatNap
//
//  Created by Billy Ryu on 3/21/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKSpriteNode (DebugDraw)

- (void)attachDebugRectWithSize:(CGSize)s;
- (void)attachDebugFrameFromPath:(CGPathRef)pathRef;

@end
