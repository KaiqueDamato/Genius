//
//  main.m
//  Genius
//
//  Created by Kaique Damato on 13/02/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "teste.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        teste *t = [[teste alloc]init];
    NSLog(@"%li", [t randomNumberBetween:1 maxNumber:2]);
        
    }
    return 0;
}
