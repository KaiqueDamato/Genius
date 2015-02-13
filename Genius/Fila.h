//
//  teste.h
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fila : NSObject

@property NSMutableArray *arrayPergunta;

@property NSMutableArray *arrayResposta;

- (NSInteger)randomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max;

-(void)inserirArrayPergunta:(NSInteger)random;
-(void)inserirArrayResposta:(NSInteger)resposta;
-(void)compararArrays:(NSUInteger)i;
-(void)limparArrays;

@end