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
    return [GamePiece pieceWithColor:[UIColor redColor]];
}

+ (GamePiece *)blackPiece
{
    return [GamePiece pieceWithColor:[UIColor blackColor]];
}

+ (GamePiece *)pieceWithColor:(UIColor *)color
{
    GamePiece *newPiece = [GamePiece new];
    newPiece.pieceColor = color;
    return newPiece;
}

@end
