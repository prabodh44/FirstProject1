//
//  Person.m
//  FirstProject
//
//  Created by ith on 8/24/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Person.h"
#import "Cookie.h"

@implementation Person

- (id) init{
    self = [super init];
    if(self){
        _age = 6;
        _cookie = [[Cookie alloc] init];
    }
    return self;
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if([keyPath isEqualToString:@"hunger"]){
        NSLog(@"%@", [object valueForKeyPath:@"hunger"]);
        NSLog(@"Changed Value: %@", [change objectForKey:NSKeyValueChangeNewKey]);
    }
}

@end
