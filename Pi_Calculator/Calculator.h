//
//  Calculator.h
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 11.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvancedScience.h"

@interface Calculator : NSObject <AdvancedScience>
{
    NSArray* _;
    int o[200000];
}

+ (NSString*) pi:(unsigned short) x;

@end
