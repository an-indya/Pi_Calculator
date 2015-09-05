//
//  Permutation.h
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 18.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "AdvancedScience.h"

@interface Permutation : NSObject <AdvancedScience>
{
    id number[32];
    int instance[32];
}

- (id) initWithClassType:(id) classType at_fixpoint:(id) fixpoint;
+ (id) permutationWithClassType:(id) classType at_fixpoint:(id) fixpoint;
    
@end
