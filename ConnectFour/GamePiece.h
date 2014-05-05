//
//  GamePiece.h
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GameBoard;
@class Player;

@interface GamePiece : NSObject

@property (nonatomic, strong) UIColor *pieceColor;
@property (nonatomic, weak) Player *player;
@property (nonatomic, weak) GameBoard *gameBoard;

+ (GamePiece *)redPiece;

+ (GamePiece *)blackPiece;

@end
