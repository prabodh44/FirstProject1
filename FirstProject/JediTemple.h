//
//  JediTemple.h
//  FirstProject
//
//  Created by ith on 8/25/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JediTemple : NSObject

- (void) enumerateMemberWithBlock: (void (^) (NSString *name, int index, BOOL *stop)) block;
@end
