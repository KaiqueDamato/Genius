//
//  teste.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Fila.h"


@implementation Fila

- (NSInteger)randomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max
{
    return min + arc4random_uniform(max - min + 1.0);
}

@end
