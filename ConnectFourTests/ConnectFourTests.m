//
//  ConnectFourTests.m
//  ConnectFourTests
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>

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

- (void)testTwoPlusTwoEqualsFour
{
    NSInteger numberOne = 2;
    NSInteger numberTwo = 2;

    XCTAssertEqual(numberOne + numberTwo, 4, @"2 + 2 should equal 4");
}

@end
