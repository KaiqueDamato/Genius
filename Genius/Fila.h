//
//  Fila.h
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fila : NSObject

@property NSMutableArray *arrayPergunta;

@property NSMutableArray *arrayResposta;

-(void)inserirArrayPergunta;
-(void)inserirArrayResposta:(NSInteger)resposta;
-(void)exibir;
@end