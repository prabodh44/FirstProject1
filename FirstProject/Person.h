//
//  Person.h
//  FirstProject
//
//  Created by ith on 8/24/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Cookie;

@interface Person : NSObject

@property int age;
@property (strong, nonatomic)NSString *name;
@property (copy, nonatomic)NSString *address;
@property (strong) Cookie *cookie;

@end
