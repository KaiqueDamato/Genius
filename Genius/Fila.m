//
//  Fila.m
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

-(void)inserirArrayPergunta {
    
    NSInteger random = [self randomNumberBetween:1 maxNumber:4];
    
    [_arrayPergunta addObject:[NSNumber numberWithInteger:random]];
    
}

-(void)inserirArrayResposta:(NSInteger)resposta {
    
    [_arrayResposta addObject:[NSNumber numberWithInteger:resposta]];
    
}

-(void)exibir {
    for (NSUInteger i = 0; i < [_arrayPergunta count];i++) {
        [self clearLogs];
        NSLog(@"%luº número:  %@", (unsigned long)i+1, _arrayPergunta[i]);
        sleep(2);
        [self clearLogs];
    }
}

-(void)clearLogs {
    char saida[1000];
    int i;
    for (i = 0; i < 300; i++) {
        saida[i]='\n';
    }
    saida[i]='\0';
    printf("%s", saida);
}

@end
