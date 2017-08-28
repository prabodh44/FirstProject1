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

- (NSString *) getSizeAndTypeofAnimal:(NSString *)food heightOfAnimal:(int)h{

    NSString *answer = [NSString stringWithFormat:@""];
    NSString *typeOfAnimal = [[NSString alloc] init];
    NSString *sizeOfAnimal = [[NSString alloc] init];
    
    NSArray *carnivorousFood = [NSArray arrayWithObjects:@"meat",@"fish", nil];
    NSArray *herbivorousFood = [NSArray arrayWithObjects:@"grass", @"vegetable", nil];

    for(NSString *foodStuff in carnivorousFood){
        if([food isEqualToString:foodStuff]){
            typeOfAnimal = @"Carnivorous ";
            break;
        }else{
            typeOfAnimal = @"not found ";
        }
    }
    
    for(NSString *foodStuff in herbivorousFood){
        if([food isEqualToString:foodStuff]){
            typeOfAnimal = @"Herbivorous ";
            break;
        }else{
            typeOfAnimal = @"not found ";
        }
    }

    answer = [answer stringByAppendingString:typeOfAnimal];
    
    
    if(h >= 1 && h < 5){
        sizeOfAnimal = @"small";
    }else if(h >= 5 && h < 10){
        sizeOfAnimal = @"medium";
    }else if(h >= 10 && h < 15){
        sizeOfAnimal = @"large";
    }else{
       sizeOfAnimal = @"huge";
    }
    
    answer = [answer stringByAppendingString:sizeOfAnimal];
    
    
    return answer;
    
    
}

@end
