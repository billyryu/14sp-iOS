//
//  EnemyA.h
//  XBlaster
//
//  Created by Billy Ryu on 3/30/14.
//  Copyright (c) 2014 Billy Ryu. All rights reserved.
//

#import "Entity.h"

@class AISteering;

@interface EnemyA : Entity {
  int         _score;
  int         _damageTakenPerShot;
  NSString    *_healthMeterText;
}

@property (strong,nonatomic) AISteering *aiSteering;

@end
