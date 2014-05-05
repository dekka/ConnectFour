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
        Player *firstPlayer = [Player new];
        Player *secondPlayer = [Player new];
        
        _players = [[NSArray alloc] initWithObjects:firstPlayer, secondPlayer, nil];
    }
    return self;
}

@end
