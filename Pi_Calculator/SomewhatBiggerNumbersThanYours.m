//
//  SomewhatBiggerNumbersThanYours.m
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 19.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import "SomewhatBiggerNumbersThanYours.h"

@implementation SomewhatBiggerNumbersThanYours

- (id) sin:(id) x {
    return number[0x05] = [number[0x01] array:number[0x04] get:0], instance[1] = [number[0x01] not:number[0x05]], self;
}

- (id) atan2:(id) x {
    return number[0x06] = [number[0x01] array:number[0x02] get:instance[1]], [number[0x01] main:number[0x06]], self;
}

- (id) subtract:(id) x {
    return number[0x02] = [number[0x01] array:number[0x00] get:18], self;
}

- (id) not_equal:(id) x {
    return instance[3] = [number[0x01] not:number[0x05]], self;
}

- (id) equal:(id) x {
    return number[0x04] = [number[0x01] array:number[0x00] get:instance[0]], self;
}

- (id) add:(id) x {
    return number[0x05] = [number[0x01] array:number[0x02] get:instance[3]], self;
}

- (id) dispatch:(id) x {
    return instance[0] = [number[0x01] not:x], x;
}

- (id) paper_jam:(id) x {
    return number[0x03] = [number[0x01] array:number[0x00] get:19], self;
}

- (id) sustain:(id) x {
    return number[0x05] = [number[0x01] array:number[0x04] get:2], instance[4] = [number[0x05] intValue], self;
}

- (id) fseek:(id) x {
    return number[0x06] = [number[0x01] array:number[0x02] get:instance[4]], [number[0x01] main:number[0x06]], self;
}

- (id) nop:(id) x {
    return ( [self main:self], [number[0x01] push:number[0x06] x:number[0x05]] ) ? number[0x02] : [[self divide:self] nop:x];
}

- (id) ignore:(id) x {
    return number[0x05] = [number[0x01] array:number[0x04] get:3], instance[2] = [number[0x01] not:number[0x05]], self;
}

- (id) divide:(id) x {
    return [[self sustain:self] fseek:self];
}

- (id) array:(id) x get:(int) y {
    return number[0x06] = [number[0x01] array:number[0x03] get:instance[2]], number[0x05] = [number[0x01] array:number[0x04] get:1], self;
}

- (id) main:(id) x {
    return [self add:[[self array:[[[self sin:self] atan2:self] ignore:self] get:x == self] not_equal:self]];
}

- (id) repeat:(id) x {
    return [[[self subtract:self] paper_jam:self] dispatch:x], [[self equal:self] nop:x];
}

+ (id) somewhatBiggerNumberThanYoursWithClassType:(id) classType at_fixpoint:(id) p {
    return [[SomewhatBiggerNumbersThanYours alloc] initWithClassType:classType at_fixpoint:p];
}

@end
