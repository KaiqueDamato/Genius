//
//  Placar.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Placar.h"

@implementation Placar

- (instancetype)init {
    self = [super init];
    if(self) {
        _placar = [[NSMutableArray alloc] init];
    }
    return self;
}

@end