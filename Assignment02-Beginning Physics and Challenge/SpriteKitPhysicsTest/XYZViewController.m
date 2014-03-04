//
//  XYZViewController.m
//  SpriteKitPhysicsTest
//
//  Created by Billy Ryu on 3/3/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import "XYZViewController.h"
#import "XYZMyScene.h"

@implementation XYZViewController

- (void)viewWillLayoutSubviews
// - (void)viewDidLoad // I don't know why this function doesn't work.
{
    [super viewWillLayoutSubviews];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    if (!skView.scene) {
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
    
        // Create and configure the scene.
        SKScene * scene = [XYZMyScene sceneWithSize:skView.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
    
        // Present the scene.
        [skView presentScene:scene];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
