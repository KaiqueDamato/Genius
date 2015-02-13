//
//  teste.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Fila.h"


@implementation Fila

- (instancetype)init {
    self = [super init];
    if (self) {
        _arrayPergunta = [[NSMutableArray alloc] init];
        _arrayResposta = [[NSMutableArray alloc] init];
    }
    return self;
}


- (NSInteger)randomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max {
    
    return min + arc4random_uniform(max - min + 1.0);
}

-(void)inserirArrayPergunta:(NSInteger)random {
    
    
    [_arrayPergunta addObject:[NSNumber numberWithInteger:random]];
    
}

-(void)inserirArrayResposta:(NSInteger)resposta {
    
    [_arrayResposta addObject:[NSNumber numberWithInteger:resposta]];
    
}

-(BOOL)compararArrays:(NSUInteger)i {
    
    if (_arrayPergunta == _arrayResposta)
        return true;
    else
        return false;
}

-(void)limparArrays {
    
    [_arrayPergunta removeAllObjects];
    [_arrayResposta removeAllObjects];
    
}

@end
