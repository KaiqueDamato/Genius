//
//  PrimeiroSingleton.m
//  Genius
//
//  Created by Guilherme Bayma on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

#import "PrimeiroSingleton.h"
#import <Foundation/Foundation.h>

@implementation PrimeiroSingleton

static PrimeiroSingleton *SINGLETON = nil;

static bool isFirstAccess = YES;

#pragma mark - Public Method

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];    
    });
    
    return SINGLETON;
}

#pragma mark - Life Cycle

+ (id) allocWithZone:(NSZone *)zone
{
    return [self sharedInstance];
}

+ (id)copyWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

+ (id)mutableCopyWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

- (id)copy
{
    return [[PrimeiroSingleton alloc] init];
}

- (id)mutableCopy
{
    return [[PrimeiroSingleton alloc] init];
}

- (id) init
{
    if(SINGLETON){
        return SINGLETON;
    }
    if (isFirstAccess) {
        [self doesNotRecognizeSelector:_cmd];
    }
    self = [super init];
    return self;
}


@end
