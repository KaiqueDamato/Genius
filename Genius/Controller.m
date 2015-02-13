//
//  Controller.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Controller.h"
#import "Placar.h"


@implementation Controller

- (void)iniciar{
    
    NSLog(@"\n0 - Mostrar Placar\n1 - Iniciar Jogo");
    int escolha1;
    scanf("%d",&escolha1);
    
    Placar *placar = [[Placar alloc] init];
    
    switch (escolha1) {
        case 0:
            [placar exibeInformacoes];
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
}

-(void) menu2 {
    Placar *p = [[Placar alloc]init];
    NSLog(@"\n0 - Novo Jogador \n1 - Já estou cadastrado!");
    int escolha2;
    scanf("%d",&escolha2);
    
    switch (escolha2) {
        case 0: {
            char a[50];
            printf("Digite seu nome: ");
            scanf("%s", a);
            
            NSString* nome = [NSString stringWithCString:a encoding:NSUTF8StringEncoding];
            
            Username *u = [[Username alloc]initWithNome:[nome uppercaseString]];
            [p addUsuario:u];
            [p exibeInformacoes];
            [self jogar];
            break;
        }
            
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
