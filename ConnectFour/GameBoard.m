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
        Player *firstPlayer = [[Player alloc] initWithColor:[UIColor redColor]];
        Player *secondPlayer = [[Player alloc] initWithColor:[UIColor blackColor]];
        
        _players = [[NSArray alloc] initWithObjects:firstPlayer, secondPlayer, nil];
        NSMutableArray *tempPieces = [NSMutableArray new];
        for (NSInteger i = 0; i < 42; i++) {
            GamePiece *gamePiece = [GamePiece new];
            [tempPieces addObject:gamePiece];
        }
        _pieces = tempPieces;
        
    }
    return self;
}



@end
