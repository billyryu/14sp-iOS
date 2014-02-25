//
//  XYZMyScene.m
//  PhysicalBounceObjective
//
//  Created by Billy Ryu on 2/18/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import "XYZMyScene.h"

@interface XYZMyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
@property SKSpriteNode* mySquare10;
@property SKSpriteNode* mySquare11;
@property SKSpriteNode* mySquare12;
@property SKSpriteNode* mySquare13;
@property SKSpriteNode* mySquare14;
@property SKSpriteNode* mySquare15;
@property SKSpriteNode* mySquare16;
@property SKSpriteNode* ground1;
@property SKSpriteNode* ground2;
@property SKSpriteNode* ground3;
@property SKPhysicsJoint* myJoint1;
@property SKPhysicsJoint* myJoint2;
@property SKPhysicsJoint* myJoint3;
@property SKPhysicsJoint* myJoint4;
@property SKPhysicsJoint* myJoint5;
@property SKPhysicsJoint* myJoint6;
@property SKPhysicsJoint* myJoint7;
@property SKPhysicsJoint* myJoint8;
@property SKPhysicsJoint* myJoint9;
@property SKPhysicsJoint* myJoint10;
@property SKPhysicsJoint* myJoint11;
@property SKPhysicsJoint* myJoint12;
@property SKPhysicsJoint* myJoint13;
@property SKPhysicsJoint* myJoint14;
@property SKPhysicsJoint* myJoint15;
@end


@implementation XYZMyScene


-(void)spawnSquares{

    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(30, 30)];
    _mySquare2 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(30, 30)];
    _mySquare3 = [[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(30, 30)];
    _mySquare4 = [[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(30, 30)];
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(30, 30)];
    _mySquare6 = [[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(30, 30)];
    _mySquare7 = [[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(30, 30)];
    _mySquare8 = [[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(30, 30)];
    _mySquare9 = [[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(30, 30)];
    _mySquare10 = [[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(30, 30)];
    _mySquare11 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(30, 30)];
    _mySquare12 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(30, 30)];
    _mySquare13 = [[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(30, 30)];
    _mySquare14 = [[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(30, 30)];
    _mySquare15 = [[SKSpriteNode alloc]initWithColor:[SKColor magentaColor] size:CGSizeMake(30, 30)];
    _mySquare16 = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(30, 30)];
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.6)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.8)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.9)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.1)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.2)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.3)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.4)];
    [_mySquare11 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare12 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.6)];
    [_mySquare13 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.7)];
    [_mySquare14 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.8)];
    [_mySquare15 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.9)];
    [_mySquare16 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare10.size];
    _mySquare11.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare11.size];
    _mySquare12.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare12.size];
    _mySquare13.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare13.size];
    _mySquare14.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare14.size];
    _mySquare15.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare15.size];
    _mySquare16.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare16.size];
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:1.0];
    [_mySquare10.physicsBody setRestitution:1.0];
    [_mySquare11.physicsBody setRestitution:1.0];
    [_mySquare12.physicsBody setRestitution:1.0];
    [_mySquare13.physicsBody setRestitution:1.0];
    [_mySquare14.physicsBody setRestitution:1.0];
    [_mySquare15.physicsBody setRestitution:1.0];
    [_mySquare16.physicsBody setRestitution:1.0];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    [self addChild:_mySquare11];
    [self addChild:_mySquare12];
    [self addChild:_mySquare13];
    [self addChild:_mySquare14];
    [self addChild:_mySquare15];
    [self addChild:_mySquare16];
    
};


//-(void)spawnBackgroundWorld{
//
//    NSLog(@"spawnBackgroundWorld");
//    self.scaleMode = SKSceneScaleModeAspectFit;
//    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
//    [self.physicsBody setRestitution:1.0]; // Bouncy
//
//};


-(void)spawnJointRyu{

    _myJoint1 = [SKPhysicsJointSpring jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    [self.physicsWorld addJoint:_myJoint1];
    
    _myJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    [self.physicsWorld addJoint:_myJoint2];

    _myJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    [self.physicsWorld addJoint:_myJoint3];
    
    _myJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    [self.physicsWorld addJoint:_myJoint4];
    
    _myJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    [self.physicsWorld addJoint:_myJoint5];
    
    _myJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare7.position];
    [self.physicsWorld addJoint:_myJoint6];
    
    _myJoint7 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
    [self.physicsWorld addJoint:_myJoint7];
    
    _myJoint8 = [SKPhysicsJointLimit jointWithBodyA:_mySquare8.physicsBody bodyB:_mySquare9.physicsBody anchorA:_mySquare8.position anchorB:_mySquare9.position];
    [self.physicsWorld addJoint:_myJoint8];
    
    _myJoint9 = [SKPhysicsJointLimit jointWithBodyA:_mySquare9.physicsBody bodyB:_mySquare10.physicsBody anchorA:_mySquare9.position anchorB:_mySquare10.position];
    [self.physicsWorld addJoint:_myJoint9];
    
    _myJoint10 = [SKPhysicsJointSpring jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare11.physicsBody anchorA:_mySquare10.position anchorB:_mySquare11.position];
    [self.physicsWorld addJoint:_myJoint10];
    
    _myJoint11 = [SKPhysicsJointLimit jointWithBodyA:_mySquare11.physicsBody bodyB:_mySquare12.physicsBody anchorA:_mySquare11.position anchorB:_mySquare12.position];
    [self.physicsWorld addJoint:_myJoint11];
    
    _myJoint12 = [SKPhysicsJointLimit jointWithBodyA:_mySquare12.physicsBody bodyB:_mySquare13.physicsBody anchorA:_mySquare12.position anchorB:_mySquare13.position];
    [self.physicsWorld addJoint:_myJoint12];
    
    _myJoint13 = [SKPhysicsJointLimit jointWithBodyA:_mySquare13.physicsBody bodyB:_mySquare14.physicsBody anchorA:_mySquare13.position anchorB:_mySquare14.position];
    [self.physicsWorld addJoint:_myJoint13];
    
    _myJoint14 = [SKPhysicsJointLimit jointWithBodyA:_mySquare14.physicsBody bodyB:_mySquare15.physicsBody anchorA:_mySquare14.position anchorB:_mySquare15.position];
    [self.physicsWorld addJoint:_myJoint14];
    
    _myJoint15 = [SKPhysicsJointLimit jointWithBodyA:_mySquare15.physicsBody bodyB:_mySquare16.physicsBody anchorA:_mySquare15.position anchorB:_mySquare16.position];
    [self.physicsWorld addJoint:_myJoint15];

};


-(void)makeGround{
    _ground1 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 10)];
    _ground1.position = CGPointMake(self.size.width/5, self.size.height/5);
    _ground1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_ground1.size];
    [_ground1.physicsBody setDynamic:NO];
    
    _ground2 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 10)];
    _ground2.position = CGPointMake(self.size.width/2, self.size.height/2);
    _ground2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_ground2.size];
    [_ground2.physicsBody setDynamic:NO];
    
    _ground3 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 10)];
    _ground3.position = CGPointMake(self.size.width/1.3, self.size.height/1.3);
    _ground3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_ground3.size];
    [_ground3.physicsBody setDynamic:NO];
    
    [self addChild:_ground1];
    [self addChild:_ground2];
    [self addChild:_ground3];
    
}


-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1]; // Bouncy
        
        
        [self spawnSquares];
        
        [self spawnJointRyu];
        [self makeGround];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when moves */
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
    
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    /* Called when moves */
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES]; // Effected by gravity
    }
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
