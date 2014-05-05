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

@end

@implementation ConnectFourTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testColorOfNewPiece
{
    GamePiece *redPiece = [GamePiece redPiece];
    GamePiece *blackPiece = [GamePiece blackPiece];
    
//    blackPiece.pieceColor = [UIColor blackColor];
//    
//    redPiece.pieceColor = [UIColor redColor];
//    
    XCTAssertEqual(blackPiece.pieceColor, [UIColor blackColor], @"The black piece should be blackColor");
    
    XCTAssertEqual(redPiece.pieceColor, [UIColor redColor], @"The red piece should be redColor");
    
}

@end
