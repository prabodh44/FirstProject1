//
//  JediTemple.m
//  FirstProject
//
//  Created by ith on 8/25/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "JediTemple.h"
//a class extension
@interface JediTemple ()
@property (readonly) NSArray *jedi;
@end

@implementation JediTemple

- (id) init{
    self = [super init];
    if(self){
        _jedi = @[@"Luke", @"Obi-Wan"];
    }
    
    return self;
}

- (void) enumerateMemberWithBlock:(void (^)(NSString *name, int index, BOOL *stop))block{
    BOOL stop = NO;
    for(int i =0; i < [_jedi count]; i++){
        block(_jedi[i], i, &stop);
        if(stop == YES){
            return;
        }
    }
}

@end
