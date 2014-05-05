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

@end
