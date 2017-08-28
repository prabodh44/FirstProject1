//
//  Boy.m
//  FirstProject
//
//  Created by ith on 8/28/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Boy.h"

@implementation Boy

- (id) initWithNameAndAge:(NSString *)name :(int)age{
    self = [super init];
    if(self){
        _name = [name copy];
        _age = age;
    }
    return self;
}

- (NSString *) description{
    NSString *string = [NSString stringWithFormat:@"The name is %@ and the age is %d", _name, _age];
    return string;
}

@end
