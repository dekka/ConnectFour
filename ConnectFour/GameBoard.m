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
    self = [super init];
    
    if (self) {
        Player *firstPlayer = [[Player alloc] initWithColor:[UIColor redColor]andPieceCount:21];
        Player *secondPlayer = [[Player alloc] initWithColor:[UIColor blackColor]andPieceCount:21];
                
        _players = [[NSArray alloc] initWithObjects:firstPlayer, secondPlayer, nil];
        NSMutableArray *tempPieces = [NSMutableArray new];
        
        for (Player *player in _players) {
            [tempPieces addObjectsFromArray:player.gamePieces];
            for (GamePiece *gamePiece in player.gamePieces) {
                gamePiece.gameBoard = self;
            }
        }
        
        _pieces = tempPieces;
        
    }
    return self;
}



@end
