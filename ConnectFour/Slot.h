//
//  Slot.h
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePiece.h"

@interface Slot : NSObject

@property (nonatomic) BOOL isFilled;
@property (nonatomic, weak) GamePiece *gamePiece;



@end
