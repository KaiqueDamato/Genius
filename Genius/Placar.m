//
//  Placar.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Placar.h"
#import "Usuario.h"

@interface Placar()

@end

@implementation Placar

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken = 0;
    __strong static Placar *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if(self) {
        _placar = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addUsuario:(id)usuario {
    [_placar addObject:usuario];
}

- (void)exibeInformacoes {
    if ([_placar count] == 0) {
        NSLog(@"Placar está vazio!");
    }
    else {
        for (Usuario *username in _placar) {
            NSLog(@"%@", username);
        }
    }
}


@end
