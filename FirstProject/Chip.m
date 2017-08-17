//
//  Chip.m
//  FirstProject
//
//  Created by ith on 8/17/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Chip.h"

@implementation Chip
- (NSString *) description{
    return @"Hello from the Chip class";
}

-(void) dealloc{
    NSLog(@"Dealloc method called from the Chip class");
}

@end
