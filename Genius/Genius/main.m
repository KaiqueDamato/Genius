//
//  main.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    Fila *t = [[Fila alloc]init];
    NSLog(@"%li", [t randomNumberBetween:1 maxNumber:2]);
        
    system( "clear" );
        
    }
    return 0;
}
