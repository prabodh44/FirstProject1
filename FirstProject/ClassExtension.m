//
//  ClassExtension.m
//  FirstProject
//
//  Created by ith on 8/25/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "ClassExtension.h"

//creating a class Extension
@interface ClassExtension ()
@property (readwrite, copy) NSString *name;

- (NSString *) secretMethod;
@end
@implementation ClassExtension


- (id) init{
    self = [super init];
    if(self){
        [self setName:@"John Doe"]; //error before class extension as property is readonly
    }
    return self;
}

- (NSString *) secretMethod {
    return @"I can be accessed only from the ClassExtension";
}

- (void) log{
    NSLog(@"Inside the logMethod");
    NSLog(@"Message from secretMethod is %@", [self secretMethod]);
}
@end
