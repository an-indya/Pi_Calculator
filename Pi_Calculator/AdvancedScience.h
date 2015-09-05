//
//  AdvancedScience.h
//  ohfuskatedsee
//
//  Created by Gerson Kurz on 19.02.13.
//  Copyright (c) 2013 Gerson Kurz. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdvancedScience <NSObject>
- (id) sin:(id) x;
- (id) atan2:(id) x;
- (id) clear_stack:(id) x;
- (id) subtract:(id) x;
- (id) not_equal:(id) x;
- (id) less_or_equal:(id) x;
- (id) greater_or_equal:(id) x;
- (id) equal:(id) x;
- (id) add:(id) x;
- (id) dispatch:(id) x;
- (id) paper_jam:(id) x;
- (id) sustain:(id) x;
- (id) fseek:(id) x;
- (id) nop:(id) x;
- (id) push_back:(id) x without:(id) y;
- (id) ignore:(id) x;
- (id) throw:(id) x;
- (id) catch:(id) x;
- (id) divide:(id) x;
- (id) array:(id) x get:(int) y;
- (int) not:(id) x;
- (id) push:(id) z x:(id) y;
- (id) repeat:(id) x;
- (id) main:(id) x;
@end
