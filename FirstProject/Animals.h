//
//  Animals.h
//  FirstProject
//
//  Created by ith on 8/17/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animals : NSObject{
    int age;
    int height;
    NSString *name;
}

@property int age;
@property int height;
@property (nonatomic) NSString *name;

- (NSString *) getSizeAndTypeofAnimal: (NSString *)food heightOfAnimal:(int)height;



@end
