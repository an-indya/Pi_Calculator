//
//  Calculator.m
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 11.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import "Calculator.h"
#import "Permutation.h"
#import "SomewhatBiggerNumbersThanYours.h"
#import "Database.h"

@implementation Calculator

- (id) sin:(id) x {
    return o[99999 - [self not:x]] = [self multiply:1], [self negate:self], x;
}

- (id) negate:(id) x {
    return o[123456]++, x;
}

- (id) atan2:(id) x {
    return o[[self clear_stock:x]] = o[99999 - [self not:x]], x;
}

- (id) clear_stack:(id) x {
    return o[[self clear_stock:x]] = [self not:x], x;
}

- (int) multiply:(int) x {
    return o[o[123456]+x];
}

- (id) not_equal:(id) x {
    return ([[self negate:self] multiply:0] == 0) ? nil : self;
}

- (id) less_or_equal:(id) x {
    return ([[self negate:self] multiply:0] <= 0) ? self : nil;
}

- (id) greater_or_equal:(id) x {
    return ([[self negate:self] multiply:0] >= 0) ? self : nil;
}

- (id) equal:(id) x {
    return ([[self negate:self] multiply:0] == 0) ? self : nil;
}

- (id) add:(id) x {
    return o[o[123456]+2] = [self multiply:2] + [self multiply:1], [self paper_jam:x];
}

- (id) dispatch:(id) x {
    return o[123456] = 123455, x;
}

- (id) paper_jam:(id) x {
    return o[123456]++ == 123456 ? x : nil;
}

- (id) pow:(int) x {
    return o[o[123456]+2] = x, self;
}

- (id) subtract:(id) x {
    return [self pow:[self multiply:2] - [self multiply:1]], o[123456]++, x;
}

- (id) sustain:(id) x {
    return [self pow:[self multiply:2] * [self multiply:1]], [self paper_jam:x];
}

- (id) fseek:(id) x {
    return [self pow:[self multiply:2] % [self multiply:1]], [self paper_jam:x];
}

- (int) clear_stock:(id) x {
    return o[123456]--;
}

- (id) nop:(id) x {
    return [self pow:[self multiply:2] / [self multiply:1]], [self paper_jam:x];
}

- (id) push_back:(id) x without:(id) y {
    return [x main:[[_ objectAtIndex:18] objectAtIndex:19]], [_ objectAtIndex:20];
}

- (id) main:(id) times {
    return [[Permutation permutationWithClassType:self at_fixpoint:_] repeat:times], times;
}

- (id) ignore:(id) x {
    return o[[self multiply:2]] = [self multiply:1], [self divide:[self divide:self]], x;
}

- (id) throw:(id) x {
    return o[o[123456]+1] = o[[self multiply:1]], x;
}

- (id) catch:(id) x {
    return [[_ objectAtIndex:20] appendFormat:@"%d", [self multiply:1]], [self paper_jam:x];
}

- (id) divide:(id) x {
    return [self clear_stock:x], x;
}

- (id) array:(id) x get:(int) y {
    return [x objectAtIndex:y];
}

- (int) not:(id) x {
    return [x intValue];
}

- (id) push:(id) z x:(id) y {
    return [self performSelector:NSSelectorFromString(z) withObject:y];
}

- (id) repeat:(id) x {
    return [[SomewhatBiggerNumbersThanYours somewhatBiggerNumberThanYoursWithClassType:self at_fixpoint:_] repeat:x], x;
}

- (id) init {
    return (self=[super init])?_=[[Database new] sin:self],self:self;
}

- (id) calculatePI:(unsigned short) x {
    return [[self dispatch:self] clear_stack:[NSNumber numberWithInt:x]], [self push_back:self without:self];
}

+ (NSString*) pi:(unsigned short) n {
    return [[Calculator new] calculatePI:n];
}

@end
