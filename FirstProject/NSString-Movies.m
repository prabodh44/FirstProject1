//
//  NSString-Movies.m
//  FirstProject
//
//  Created by ith on 8/18/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "NSString-Movies.h"

@implementation NSString (Movies)
- (BOOL) isAMovie{
    if([self hasSuffix:@".mov"] || [self hasSuffix:@".flv"] || [self hasSuffix:@".mp4"]){
        return YES;
    }
    
    return NO;
}

- (NSString *) removeNumbersFromString:(NSString *)string {
    NSString *trimmedString = nil;
    NSCharacterSet *setNumber = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    trimmedString = [string stringByTrimmingCharactersInSet:setNumber];
    return trimmedString;
}
@end
