//
//  GamePiece.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "GamePiece.h"

@implementation GamePiece

+ (GamePiece *)redPiece
{
    GamePiece *newPiece = [GamePiece new];
    newPiece.pieceColor = [UIColor redColor];
    return newPiece;
}

+ (GamePiece *)blackPiece
{
    GamePiece *newPiece = [GamePiece new];
    newPiece.pieceColor = [UIColor blackColor];
    return newPiece;
}

@end
