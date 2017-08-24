//
//  Dog.h
//  FirstProject
//
//  Created by ith on 8/24/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logging.h"

@interface Dog : NSObject <Logging>{
    int age;
}

@property int age;
@end
