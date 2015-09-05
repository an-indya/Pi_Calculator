//
//  Permutation.m
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 18.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import "Permutation.h"
#import "Calculator.h"

@implementation Permutation

- (id) equal:(id) x {
    return number[0x04] = [number[0x01] array:number[0x03] get:instance[0x00]+1], self;
}

- (id) dispatch:(id) x {
    return instance[0x01] = [number[0x01] not:number[0x04]], self;
}

- (id) sin:(id) x {
    return [number[0x01] push:number[0x05] x:number[0x04]], self;
}

- (id) array:(id) x get:(int) y {
    return instance[(int) x] = y, x;
}

- (id) throw:(id) x {
    return number[0] = x, self;
}

- (id) catch:(id) x {
    return number[1] = x, x;
}

- (id) main:(id) x {
    return instance[0x00] += instance[0x004], self;
}

- (id) divide:(id) x {
    return number[0x04] = [number[0x01] array:number[0x06] get:instance[0x01]], self;
}

- (id) subtract:(id) x {
    return [self main:[[self divide:self] sin:self]];
}

- (id) atan2:(id) x {
    return number[0x05] = [number[0x01] array:number[0x02] get:instance[0x01]], self;
}

- (id) ignore:(id) x {
    return instance[0x01] = [number[0x01] not:number[0x04]], x;
}

- (id) nop:(id) x {
    return number[0x04] = [number[0x01] array:number[0x03] get:instance[0x00]], x;
}

- (id) add:(id) x {
    return [self ignore:[[self atan2:self] equal:x]];
}

- (id) fseek:(id) x {
    return [self subtract:[self add:[self dispatch:[self nop:x]]]], x;
}

+ (id) permutationWithClassType:(id) classType at_fixpoint:(id) p {
    return [[Permutation alloc] initWithClassType:classType at_fixpoint:p];
}

- (id) not_equal:(id) x {
    return number[0x06] = [number[0x01] array:number[0x00] get:instance[0x02]], self;
}

- (id) less_or_equal:(id) x {
    return number[0x02] = [number[0x01] array:number[0x00] get:instance[0x03]], x;
}

- (id) less_nor_equal:(id) x {
    return instance[instance[5]++] = 0, self;
}

- (id) sustain:(id) x {
    return [self not:self]?[self sustain:[self fseek:x]] : nil;
}

- (id) greater_or_equal:(id) x {
    return number[0x03] = [number[0x01] array:number[0x00] get:[number[0x01] not:x]], x;
}

- (int) not:(id) x {
    return instance[0x00] < [number[0x03] count];
}

- (int) neg:(id) x {
    return instance[instance[5]++]=18, instance[instance[5]++]=19, 2;
}

- (id) clear_stack:(id) x {
    return number[0x03]=[number[0x01] array:number[0x00] get:[number[0x01] not:x]], self;
}

- (id) push:(id) z x:(id) y {
    return [[self not_equal:z] less_or_equal:y];
}

- (id) repeat:(id) x {
    return [self push_back:x without:self];
}

- (id) paper_jam:(id) x {
    return [self clear_stack:[self greater_or_equal:[[self not_equal:x] less_or_equal:x]]], x;
}

- (id) push_back:(id) x without:(id) y {
    return [self sustain:[y paper_jam:x]];
}

- (id) initWithClassType:(id) classType at_fixpoint:(id) fixpoint {
    if( self = [super init] ) {
        [[self throw:fixpoint] catch:classType];
        instance[5] = 0;
        [[self less_nor_equal:self] less_nor_equal:self];
        instance[instance[5]++] = [self neg:self];
    }
    return self;
}
@end
