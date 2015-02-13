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
            [self jogar:u];
            break;
        }
            
        case 1: {
            NSString *nome;
            char a[50];
            printf("Digite seu nome de usuário: ");
            scanf("%s",a);
            nome = [[NSString stringWithCString:a encoding:NSUTF8StringEncoding]uppercaseString];

            for (Username *user in p.placar) {
                if ([nome isEqual:user.nome]) {
                    [self jogar:user];
                }else {
                    NSLog(@"Jogador nāo encontrado.\nO nome deve ser o mesmo que você usou anteriormente.");
                    [self iniciar];
                    break;
                }
            }
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
    
    while (acerto) {
        [f inserirArrayPergunta];
        [f exibir];
        NSLog(@"\nDigite a sequencia apresentada, um numero por vez (aperte enter apos escrever um numero):");
        int a;
        for (int i=0; i<[f.arrayPergunta count]; i++) {
            scanf("%d",&a);
            [f inserirArrayResposta:(NSInteger)a];
        }
        acerto = [f compararArrays];
        if (acerto) {
            NSLog(@"Sequencia correta!\n\n\n\n\n");
            sleep(1);
            [f.arrayResposta removeAllObjects];
        }
    }
    NSLog(@"Você errou a seuqencia! :(\nSua pontuaçāo foi salva.");
    u.pontuacao = [f.arrayResposta count];
    u.vezes = u.vezes+1;
    [self iniciar];
}

@end
