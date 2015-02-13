//
//  Controller.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Controller.h"


@implementation Controller

- (BOOL)iniciar{
    
    NSLog(@"\n0 - Mostrar Placar\n1 - Iniciar Jogo");
    int escolha1;
    scanf("%d",&escolha1);
    
    Placar *p = [[Placar alloc] init];
    
    switch (escolha1) {
        case 0:
            NSLog(@"\nOpçāo 0");
            [self iniciar];
            break;
            
        case 1:
            NSLog(@"\nOpçāo 1");
            [self iniciar];
            break;
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
            
    }
    
    return true;
}


@end
