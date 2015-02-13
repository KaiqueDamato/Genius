//
//  main.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#import <stdlib.h>
#import "Username.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Controller *c = [[Controller alloc] init];
        
        NSLog(@"%li", [t randomNumberBetween:1 maxNumber:4]);
        NSLog(@"%li", [t randomNumberBetween:1 maxNumber:4]);
        NSLog(@"%li", [t randomNumberBetween:1 maxNumber:4]);
        NSLog(@"%li", [t randomNumberBetween:1 maxNumber:4]);
        
        char a[50];
        printf("digite seu nome: ");
        scanf("%s", a);
        
        NSString* nome = [NSString stringWithCString:a encoding:NSUTF8StringEncoding];
        Username *u = [[Username alloc]initWithNome:nome];
        NSLog(@"%@",u);
    }
    return 0;
}
