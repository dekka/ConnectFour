//
//  Column.h
//  ConnectFour
//
//  Created by Reed Sweeney on 5/5/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Slot.h"

@interface Column : NSObject

@property (nonatomic, strong) NSMutableArray *slots;

- (instancetype)initWithSlots;

@end
