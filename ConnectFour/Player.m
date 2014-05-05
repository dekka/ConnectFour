//
//  Player.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "Player.h"
#import "GamePiece.h"

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

- (instancetype)initWithColor:(UIColor *)color andPieceCount:(NSInteger)pieceCount
{
    self = [super init];
    if (self) {
        _playerColor = color;
        NSMutableArray *tempArray = [NSMutableArray new];
        for (NSInteger i = 0; i < pieceCount; i++) {
            GamePiece *newPiece = [color isEqual:[UIColor blackColor]] ? [GamePiece blackPiece] : [GamePiece redPiece];
            [tempArray addObject:newPiece];
        }
        self.gamePieces = tempArray;
    }
    return self;
}

@end







