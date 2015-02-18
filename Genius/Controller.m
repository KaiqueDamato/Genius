//
//  Controller.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Controller.h"


@implementation Controller

- (void)iniciar{
    
    NSLog(@"\n0 - Mostrar Placar\n1 - Iniciar Jogo");
    int escolha1;
    scanf("%d",&escolha1);
    
    Placar *placar = [Placar sharedInstance];
    
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
    Placar *p = [Placar sharedInstance];
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
            [self jogar:u];
            break;
        }
            
        case 1: {
            NSString *nome;
            char a[50];
            printf("Digite o nome do jogador: ");
            scanf("%s",a);
            nome = [[NSString stringWithCString:a encoding:NSUTF8StringEncoding]uppercaseString];

            for (Username *user in p.placar) {
                if ([nome isEqual:user.nome]) {
                    [self jogar:user];
                    break;
                }
                
            }
            NSLog(@"Jogador nāo encontrado.\nO nome deve ser o mesmo que você usou anteriormente.");
            [self iniciar];
            break;
            
        }
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
        
    }
}

-(void) jogar:(Username *)u  {
    Fila *f = [[Fila alloc] init];
    BOOL acerto = YES;
    
    //instruções
    NSLog(@"\n----- Instruções: -----\nMemorize a sequência de números exibida. A cada acerto a sequência ficará maior!");
    sleep(4);
    
    while (acerto) {
        [f inserirArrayPergunta];
        [f exibir];
        NSLog(@"\nDigite a sequência apresentada, um número por vez (aperte enter após escrever um número):");
        int a;
        for (int i=0; i<[f.arrayPergunta count]; i++) {
            scanf("%d",&a);
            [f inserirArrayResposta:(NSInteger)a];
        }
        acerto = [f compararArrays];
        if (acerto) {
            NSLog(@"Sequência correta!\n\n\n\n\n");
            sleep(1);
            [f.arrayResposta removeAllObjects];
        }
    }
    NSLog(@"Você errou a sequência! :(\nSua pontuaçāo foi salva.\n\n\n\n");
    if (u.pontuacao <= [f.arrayResposta count] - 1) {
        u.pontuacao = [f.arrayResposta count] - 1;
    }
    u.vezes = u.vezes+1;
    [self iniciar];
}

@end
