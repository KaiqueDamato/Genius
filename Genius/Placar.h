//
//  Placar.h
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Username.h"

@interface Placar : NSObject

@property NSMutableArray *placar;

- (instancetype)init;
- (void)addUsuario:(Username *)usuario;

@end
