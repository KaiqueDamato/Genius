//
//  Placar.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "Placar.h"
#import "Username.h"

@implementation Placar

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

- (void)exibeInformaçoes {
    for (Username *username in _placar) {
        NSLog(@"%@", username);
    }
}


@end
