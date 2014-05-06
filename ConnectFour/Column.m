//
//  Column.m
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "Column.h"

@implementation Column

- (instancetype)initWithSlots
{
    self = [super init];
    if (self) {
        _slots = [NSMutableArray new];
        for (NSInteger i = 0; i < 6; i++)
        {
            Slot *slot = [Slot new];
            [_slots addObject:slot];
        }
        
    }
    self.openSlot = [self.slots lastObject];
    
    return self;
}

-(void)addGamePiece:(GamePiece *)gamePiece
{
    NSInteger index = [self.slots indexOfObject:self.openSlot];
    self.openSlot.gamePiece = gamePiece;
    if (index == 0)
    {
        self.openSlot = nil;
        self.isFull = YES;
    }
    else
    {
         self.openSlot = self.slots[index - 1];
    }
}

@end












