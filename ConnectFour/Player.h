//
//  Player.h
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) UIColor *playerColor;
@property (nonatomic, weak) NSArray *gamePieces;
@property (nonatomic, readwrite) BOOL isCurrentTurn;

- (instancetype)initWithColor:(UIColor *)color;


@end
