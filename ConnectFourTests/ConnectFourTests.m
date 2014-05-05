//
//  ConnectFourTests.m
//  ConnectFourTests
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GamePiece.h"
#import "GameBoard.h"
#import "Player.h"

@interface ConnectFourTests : XCTestCase

@property (nonatomic, strong) GameBoard *gameBoard;

@end

@implementation ConnectFourTests

- (void)setUp
{
    [super setUp];
    _gameBoard = [[GameBoard alloc] initWithPlayers];
}

- (void)tearDown
{
    _gameBoard = nil;
    [super tearDown];
}

- (void)testColorOfNewPiece
{
    GamePiece *redPiece = [GamePiece redPiece];
    GamePiece *blackPiece = [GamePiece blackPiece];
    
    XCTAssertEqual(blackPiece.pieceColor, [UIColor blackColor], @"The black piece should be blackColor");
    
    XCTAssertEqual(redPiece.pieceColor, [UIColor redColor], @"The red piece should be redColor");
}

- (void)testNewGamePlayerCount
{
    XCTAssertTrue(_gameBoard.players.count == 2, @"The number of players in a new game should be 2");
}

- (void)testNewPlayerColors
{
    Player *firstPlayer = [_gameBoard.players firstObject];
    Player *secondPlayer = [_gameBoard.players lastObject];
    
    UIColor *firstPlayerColor = firstPlayer.playerColor;
    UIColor *secondPlayerColor = secondPlayer.playerColor;
    
//    firstPlayer.playerColor = [UIColor redColor];
//    secondPlayer.playerColor = [UIColor blackColor];
    
    XCTAssertNotEqual(firstPlayer.playerColor, secondPlayer.playerColor, @"The players should not have the same color");
    
    XCTAssertTrue([firstPlayerColor isEqual:[UIColor redColor]] || [secondPlayerColor isEqual:[UIColor redColor]], @"One of the players should have red color");
    XCTAssertTrue([firstPlayerColor isEqual:[UIColor blackColor]] || [secondPlayerColor isEqual:[UIColor blackColor]], @"One of the players should have black color");
}

- (void)testNewGamePlayersExist
{
    for (NSInteger i = 0; i < _gameBoard.players.count; i++) {
        XCTAssertNotNil(_gameBoard.players[i], @"There should be a player object at index %d", i);
    }
    
}

- (void)testGameBoardForPieces
{
    for (GamePiece *piece in _gameBoard.pieces) {
        XCTAssertEqualObjects(piece.gameBoard, _gameBoard, @"Piece should reference their gameboard");
    }
    
}

- (void)testGamePieceColorMatchesPlayerColor
{
    for (Player *player in _gameBoard.players) {
        for (GamePiece *gamePiece in player.gamePieces) {
            XCTAssertEqual(gamePiece.pieceColor, player.playerColor, @"The game pieces should be the same color as the player color");
        }
    }
    
}

- (void)testPlayerInitialGamePieceCount
{
    for (Player *player in _gameBoard.players) {
        
        XCTAssertEqual(player.gamePieces.count, 21, @"Each player should start with 21 pieces");
    }
}

@end











