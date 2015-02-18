//
//  Username.h
//  Genius
//
//  Created by Matheus Amancio Seixeiro on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Usuario : NSObject


@property NSString *nome;
@property NSInteger  pontuacao;
@property NSInteger vezes;

-(instancetype)initWithNome: (NSString *)nome;
@end
