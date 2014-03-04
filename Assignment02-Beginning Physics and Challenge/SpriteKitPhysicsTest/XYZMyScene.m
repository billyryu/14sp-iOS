//
//  XYZMyScene.m
//  SpriteKitPhysicsTest
//
//  Created by Billy Ryu on 3/3/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import "XYZMyScene.h"

@implementation XYZMyScene
{
    SKSpriteNode *_square;
    SKSpriteNode *_circle;
    SKSpriteNode *_triangle;
}

-(instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        // Your code goes here
        
        _square = [SKSpriteNode spriteNodeWithImageNamed:@"square"];
        _square.position = CGPointMake(self.size.width * 0.25,
                                       self.size.height * 0.50);
        [self addChild:_square];
        
        _circle = [SKSpriteNode spriteNodeWithImageNamed:@"circle"];
        _circle.position = CGPointMake(self.size.width * 0.50,
                                       self.size.height * 0.50);
        _circle.physicsBody =
        [SKPhysicsBody bodyWithCircleOfRadius:_circle.size.width/2];
        [self addChild:_circle];
        
        _triangle = [SKSpriteNode spriteNodeWithImageNamed:@"triangle"];
        _triangle.position = CGPointMake(self.size.width * 0.75,
                                         self.size.height * 0.5);
        [self addChild:_triangle];
        
        // Edge loop bodies
        self.physicsBody =
        [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
        _square.physicsBody =
        [SKPhysicsBody bodyWithRectangleOfSize:_square.size];
        
        
        // Custom body shapes
        //1
        CGMutablePathRef trianglePath = CGPathCreateMutable();
        
        //2
        CGPathMoveToPoint(
                          trianglePath, nil, -_triangle.size.width/2, -_triangle.size.height/2);
        
        //3
        CGPathAddLineToPoint(
                             trianglePath, nil, _triangle.size.width/2, -_triangle.size.height/2);
        CGPathAddLineToPoint(trianglePath, nil, 0, _triangle.size.height/2);
        CGPathAddLineToPoint(
                             trianglePath, nil, -_triangle.size.width/2, -_triangle.size.height/2);
        
        //4
        _triangle.physicsBody =
        [SKPhysicsBody bodyWithPolygonFromPath:trianglePath];
        
        //5
        CGPathRelease(trianglePath);
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
