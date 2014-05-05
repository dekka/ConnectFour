//
//  GameBoard.h
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Column.h"

@class GamePiece;

@interface GameBoard : NSObject

@property (nonatomic, strong) NSArray *pieces;
@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) NSMutableArray *columns;


- (instancetype)initWithPlayers;

- (void)playPiece:(GamePiece *)gamePiece atIndexPath:(NSIndexPath *)indexPath;

- (void)player:(Player *)player addedGamePiece:(GamePiece *) atColumn:(Column *)column;

@end
