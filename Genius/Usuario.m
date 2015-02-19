//
//  Username.m
//  Genius
//
//  Created by Matheus Amancio Seixeiro on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Usuario.h"


@implementation Usuario

-(instancetype)initWithNome:(NSString *)nome {
    
    self = [super init];
    if (self) {
        _nome = nome;
        _pontuacao = 0;
        _vezes =0;
        
    }
    return self;
}

- (NSString *)description {
    NSString *mydescription;
    return mydescription = [NSString stringWithFormat:@"\n Jogador: %@ \n Melhor Pontuação: %lu \n Numero de vezes que jogou: %lu \n------------------------------",_nome, _pontuacao, _vezes];
}

@end
