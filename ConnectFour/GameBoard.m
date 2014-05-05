//
//  GameBoard.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "GameBoard.h"
#import "Player.h"

@implementation GameBoard

- (instancetype)initWithPlayers
{
    if (self = [super init]) {
        Player *firstPlayer = [[Player alloc] initWithColor:[UIColor redColor]];
        Player *secondPlayer = [[Player alloc] initWithColor:[UIColor blackColor]];
        
        _players = [[NSArray alloc] initWithObjects:firstPlayer, secondPlayer, nil];
    }
    return self;
}

@end
