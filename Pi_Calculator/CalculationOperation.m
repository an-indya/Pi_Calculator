//
//  CalculationOperation.m
//  Pi_Calculator
//
//  Created by Anindya Sengupta on 9/4/15.
//  Copyright (c) 2015 Anindya Sengupta. All rights reserved.
//


#import "CalculationOperation.h"
#import "Calculator.h"

@implementation CalculationOperation

- (void)main {
    if ([self isCancelled]) {
        DLog(@"** operation cancelled **");
    }
    
    self.valueOfPi = [Calculator pi:50];
    
    if ([self isCancelled]) {
        DLog(@"** operation cancelled **");
    }

    DLog(@"Operation finished");
}

@end
