//
//  Database.m
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 19.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import "Database.h"

@implementation Database

- (id) array:(id) x get:(int) y {
    return [x addObject:[NSNumber numberWithInt:y]], self;
}

- (id) left_join:(int*) x using:(int) n {
    id p = [NSMutableArray new];
    for(int i = 0; i < n/sizeof(int); ++i )
        [self array:p get:x[i]];
    return p;
}

- (id) add:(id) x {
    int decimal_expansion_of_pi[] = {0,1,4,8,1,5,0,2,3,0,4,5,0,0};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) atan2:(id) x {
    int decimal_expansion_of_pi[] = {8,0,1,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) clear_stack:(id) x {
    int decimal_expansion_of_pi[] = {1,8,4,5,1,2,0,3,11,0,1,7,3,0,4,8,1,2,0,3,8,0,4,7,1,8,0,3,5,0,9,4,10,0,9,5,10,2};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) subtract:(id) x {
    int decimal_expansion_of_pi[] = {1,2,1,6,12,1,1,6,0,2,5,2,13,1,0,3,12,1,3,1,4,0,1,0,1,6,0,0,12,0,0,2,5,0,11,0,4,
        2,1,6,0,2,5,0,1,0,1,6,0,0,12,0,0,2,5,0,8,0,14,2,1,6,0,2,5,2,4,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) not_equal:(id) x {
    int decimal_expansion_of_pi[] = {0,1,4,2,1,4,0,3,12,0,0,8,11,0,4,6,9,10,10,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) less_or_equal:(id) x {
    int decimal_expansion_of_pi[] = {1,6,0,2,5,0,0,0,17,2,1,6,0,2,5,2,4,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) greater_or_equal:(id) x {
    int decimal_expansion_of_pi[] = {0,1,4,8,0,1,4,7,0,0,3,0,4,4,1,4,0,3,12,0,0,8,11,0,4,6,9,18,0,1,4,1,9,13};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) equal:(id) x {
    int decimal_expansion_of_pi[] = {1,5,2,0,0,1};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) dispatch:(id) x {
    int decimal_expansion_of_pi[] = {1,1,0,2,3,0,4,1};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) paper_jam:(id) x {
    int decimal_expansion_of_pi[] = {1,1,0,1,5,0};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) sustain:(id) x {
    int decimal_expansion_of_pi[] = {12,0,9,15};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) fseek:(id) x {
    int decimal_expansion_of_pi[] = {8,0,7,7};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) nop:(id) x {
    int decimal_expansion_of_pi[] = {1,1,1,4,5,2};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) ignore:(id) x {
    int decimal_expansion_of_pi[] = {1,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) throw:(id) x {
    int decimal_expansion_of_pi[] = {2,0,1,10,6,4,7,5,3,8,10,12,9,13,11,19,18,15,16,17,14,21};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) catch:(id) x {
    int decimal_expansion_of_pi[] = {17,0,20,15};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) divide:(id) x {
    int decimal_expansion_of_pi[] = {11,0,14,16};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) repeat:(id) x {
    int decimal_expansion_of_pi[] = {1,6};
    return [self left_join:decimal_expansion_of_pi using:sizeof(decimal_expansion_of_pi)];
}

- (id) main:(id) x {
    return [@"clear_stack:@atan2:@catch:@add:@sin:@subtract:@equal:@not_equal:@fseek:" stringByAppendingString:x];
}

- (id) not_unless:(id) x {
    return [self main:@"@repeat:@main:@nop:@sustain:@throw:@ignore:@less_or_equal:@greater_or_equal:@ignore:"];
}

- (id) sin:(id) x {
    return [NSArray arrayWithObjects:[self equal:self],[self dispatch:self],[self paper_jam:self],
            [NSMutableArray new],[self atan2:self],[self add:self],[self fseek:self],[self clear_stack:self],
            [self subtract:self],[self ignore:self],[self sustain:self],[self not_equal:self],[self nop:self],
            [self divide:self],[self less_or_equal:self],[self repeat:self],[self catch:self],
            [self greater_or_equal:self],[self throw:self],[[self not_unless:self] componentsSeparatedByString:@"@"],
            [NSMutableString new], nil];
}


@end
