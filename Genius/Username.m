//
//  Username.m
//  Genius
//
//  Created by Matheus Amancio Seixeiro on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Username.h"


@implementation Username

-(instancetype)initWithNome:(NSString *)n;
{
    
    self = [super init];
    if (self) {
        _nome = n;
        _pontuacao = 0;
        _vezes =0;
        
    }
    return self;
}



@end
