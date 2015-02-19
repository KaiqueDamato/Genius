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
    
    NSLog(@"\n0 - Iniciar Jogo\n1 - Mostrar Placar\n2 - Encerrar");
    int escolha1;
    scanf("%d",&escolha1);
    
    Placar *placar = [Placar sharedInstance];
    
    switch (escolha1) {
        case 0:
            [self menu2];
            break;
            
        case 1:
            [placar exibeInformacoes];
            [self iniciar];
            break;
            
        case 2:
            break;
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
    }
}

-(void) menu2 {
    Placar *p = [Placar sharedInstance];
    NSLog(@"\n0 - Novo Jogador \n1 - Já estou cadastrado \n2 - Voltar para o menu principal");
    int escolha2;
    scanf("%d",&escolha2);
    
    switch (escolha2) {
        case 0: {
            char a[50];
            printf("Digite seu nome: ");
            scanf("%s", a);
            
            NSString* nome = [NSString stringWithCString:a encoding:NSUTF8StringEncoding];
            
            Usuario *u = [[Usuario alloc]initWithNome:[nome uppercaseString]];
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

            for (Usuario *user in p.placar) {
                if ([nome isEqual:user.nome]) {
                    [self jogar:user];
                    break;
                }
            }
            NSLog(@"Jogador nāo encontrado.\nO nome deve ser o mesmo que você usou anteriormente.");
            [self iniciar];
            break;
        }
            
        case 2:{
            [self iniciar];
            break;
        }
            
            
        default:
            NSLog(@"Opçāo Inválida");
            [self iniciar];
            break;
    }
}

-(void) jogar:(Usuario *)u  {
    Fila *f = [[Fila alloc] init];
    BOOL acerto = YES;
    
    //instruções
    NSLog(@"\n----- Instruções: -----\nMemorize a sequência de números exibida. A cada acerto a sequência ficará maior!");
    sleep(4);
    
    while (acerto) {
        [f inserirArrayPergunta];
        [f exibir];
        
        NSLog(@"\nDigite a sequência apresentada, um número por vez (aperte enter após escrever um número):");
        
        NSInteger a = 0;
        
        for (int i=0; i<[f.arrayPergunta count]; i++) {
            
            do {
                scanf("%ld",&a);
            } while (a!=1 && a!=2 && a!=3 && a!=4);
            
            NSNumber *teste;
            teste = (NSNumber*)[f.arrayPergunta objectAtIndex:(NSInteger)i];
            
            if ([teste isEqual:[NSNumber numberWithInteger:a]]) {
                [f inserirArrayResposta:(NSInteger)a];
            }else {
                NSLog(@"Você errou a sequência! :(\nSua pontuaçāo foi salva.\n\n\n\n");
                if (u.pontuacao <= [f.arrayPergunta count] - 1) {
                    u.pontuacao = [f.arrayPergunta count] - 1;
                }
                u.vezes = u.vezes+1;
                acerto = NO;
                [self iniciar];
                break;
            }
        }
        
        if (acerto) {
            NSLog(@"Sequência correta!\n\n\n\n\n");
            sleep(1);
            [f.arrayResposta removeAllObjects];
        }
    }
}

@end
