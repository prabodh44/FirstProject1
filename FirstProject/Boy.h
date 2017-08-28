//
//  Boy.h
//  FirstProject
//
//  Created by ith on 8/28/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Boy : NSObject

@property (copy) NSString *name;
@property int age;

- (id) initWithNameAndAge:(NSString *) name : (int)age;

@end
