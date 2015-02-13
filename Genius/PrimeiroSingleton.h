//
//  PrimeiroSingleton.h
//  Genius
//
//  Created by Guilherme Bayma on 2/13/15.
//  Copyright (c) 2015 Kaique Damato. All rights reserved.
//

@interface PrimeiroSingleton : NSObject

/**
 * gets singleton object.
 * @return singleton
 */
+ (PrimeiroSingleton*)sharedInstance;

@end
