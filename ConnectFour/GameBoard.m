//
//  GameBoard.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "GameBoard.h"
#import "Player.h"
#import "GamePiece.h"

@implementation GameBoard

- (instancetype)initWithPlayers
{
    if (self = [super init]) {
        Player *firstPlayer = [[Player alloc] initWithColor:[UIColor redColor]andPieceCount:21];
        Player *secondPlayer = [[Player alloc] initWithColor:[UIColor blackColor]andPieceCount:21];
        
        _players = [[NSArray alloc] initWithObjects:firstPlayer, secondPlayer, nil];
        NSMutableArray *tempPieces = [NSMutableArray new];
        
        for (Player *player in _players) {
            [tempPieces addObjectsFromArray:player.gamePieces];
        }
        
        _pieces = tempPieces;
        
    }
    return self;
}



@end
