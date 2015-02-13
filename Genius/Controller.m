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
    
    //Placar *p = [[Placar alloc] init];
    
    switch (escolha1) {
        case 0:
            // [p exibeInformacoes];
            [self iniciar];
            break;
            
        case 1:
            [self menu2];
            break;
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
    }
    
    return true;
}

-(void) menu2 {
    NSLog(@"\n0 - Novo Jogador \n1 - Já estou cadastrado!");
    int escolha2;
    scanf("%d",&escolha2);
    
    
    switch (escolha2) {
        case 0:
            //cria novo usuario e adiciona no placar
            [self jogar];
            break;
            
        case 1:
            //exibe lista de usuarios para escolha
            [self jogar];
            break;
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
    }
}

-(void) jogar {
    
}

@end
