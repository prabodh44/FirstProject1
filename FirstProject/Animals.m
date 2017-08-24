//
//  Animals.m
//  FirstProject
//
//  Created by ith on 8/17/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Animals.h"

@implementation Animals

- (NSString *) name{
    return @"Default name";
}

- (NSString *) description{
    NSString *address = nil;
    _name = @"Hari";
    NSMutableString *returnString = [[NSMutableString alloc] initWithFormat:@"_name is %@ \n", _name];
    [returnString appendFormat:@"self.name is %@", self.name];
    return returnString;
}

@end
