//
//  Player.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self)
    {
        _playerColor = color;
    }
    return self;
}

@end
