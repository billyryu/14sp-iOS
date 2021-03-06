//
//  WinScene.m
//  soundpond
//
//  Created by Billy Ryu on 4/8/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import "WinScene.h"
#import "MyScene.h"
#import "SKTAudio.h"
#import "GameOverScene.h"

@implementation WinScene
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [[SKTAudio sharedInstance] playBackgroundMusic:@"win.mp3"];
        
        // 1
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        self.zPosition = 20;
        
        // 2
        NSString * message;
        message = @"You Win!";
        // 3
        
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"The Skinny"];
        label.text = message;
        label.fontSize = 40;
        label.fontColor = [SKColor blackColor];
        label.position = CGPointMake(self.size.width/2, self.size.height/2-20);
        [self addChild:label];
        
        NSString * retrymessage;
        retrymessage = @"Continue";
        SKLabelNode *retryButton = [SKLabelNode labelNodeWithFontNamed:@"The Skinny"];
        retryButton.text = retrymessage;
        retryButton.fontColor = [SKColor blackColor];
        retryButton.position = CGPointMake(self.size.width/2, 50);
        retryButton.name = @"retry";
        [retryButton setScale:.5];
        
        [self addChild:retryButton];
        
        [self runAction:
         [SKAction sequence:@[
                              [SKAction waitForDuration:3.0],
                              [SKAction runBlock:^{
             // 5
             SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
             SKScene * myScene = [[MyScene alloc] initWithSize:self.size];
             [self.view presentScene:myScene transition: reveal];
         }]
                              ]]
         ];
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"retry"]) {
        SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
        
        MyScene * scene = [MyScene sceneWithSize:self.view.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        [self.view presentScene:scene transition: reveal];
        
    }
}
-(BOOL)prefersStatusBarHidden{
    return YES;
}
@end

