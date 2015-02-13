//
//  Username.m
//  Genius
//
//  Created by Matheus Amancio Seixeiro on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Username.h"


@implementation Username

-(instancetype)initWithNome:(NSString *)nome;
{
    
    self = [super init];
    if (self) {
        _nome = nome;
        _pontuacao = 0;
        _vezes =0;
        
    }
    return self;
}
- (NSString *)description
{
    NSString *mydescription;
    return mydescription = [NSString stringWithFormat:@"nome :%@\n pontuacao: %lu\n vezes : %lu",_nome, _pontuacao, _vezes];
}


@end
