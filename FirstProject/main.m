//
//  main.m
//  FirstProject
//
//  Created by ith on 8/15/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

//an extern keyword is used when a variable has to be in another file
//where the variable is not defined
extern int externFirstVar;
extern int externSecondVar;
//use of the define pre-processor
#define PI 3.1416

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        int firstNum;
        int secondNum;
        NSLog(@"Hello World\n");
        NSLog(@"Simple mathmatical calculations\n");
        firstNum = 10;
        secondNum = 3;
        
        int sum = firstNum + secondNum;
        int diff = firstNum - secondNum;
        int product = firstNum * secondNum;
        float div = firstNum / secondNum;
        
        
        NSLog(@"The sum is %d\n", sum);
        NSLog(@"The difference  is %d\n", diff);
        NSLog(@"The product is %d\n", product);
        NSLog(@"The quotient is %f\n", div);
        
        int externFirstVar = 10;
        int externSecondVar = 20;
        
        NSLog(@"The value of externFirstVar is %d\n", externFirstVar);
        NSLog(@"The value of externSecondVar is %d\n", externSecondVar);
        
        NSLog(@"The area of the circle is %f\n", 2 * PI * 9);
        const double G = 6.67E-5;
        NSLog(@"Universal Gravitational Constant = %f", G);
        
        NSString *startingString = @"NSString creates immutable strings";
        NSLog(@"%@", startingString);
        
        NSMutableString *mutableString = [NSMutableString stringWithString:@"This string is mutable"];
        NSLog(@"%@", mutableString);
        
        NSMutableString *string1 =[NSMutableString stringWithString:@"This is part 1"];
        NSMutableString *string2 = string1;
        NSLog(@"Before appending");
        NSLog(@"%@",string1);
        NSLog(@"%@",string2);
        
        [string2 appendString:@" and this is part 2"];
        NSLog(@"After appending");
        NSLog(@"%@",string1);
        NSLog(@"%@",string2);
        
        NSMutableString *diffString1 = [NSMutableString stringWithString:@"This is diffString1"];
        NSMutableString *diffString2 = [NSMutableString stringWithString:diffString1]; //copying diffString1 into diffString2
        NSLog(@"Before appending");
        NSLog(@"%@",diffString1);
        NSLog(@"%@",diffString2);
        
        [diffString2 appendString:@" and this is now joined with diffString2"];
        NSLog(@"After appending");
        NSLog(@"%@",diffString1);
        NSLog(@"%@",diffString2);
        
        NSMutableString *mutableString1 = [NSMutableString stringWithString:@"@Mutable String 1"];
        NSMutableString *mutableString2 = mutableString1;
        NSLog(@"mutableString1 = %@, mutableString2 = %@", mutableString1, mutableString2);
        [mutableString2 setString:@"mutableString2 value changed"];
        NSLog(@"mutableString1 = %@, mutableString2 = %@", mutableString1, mutableString2);
        
        NSString *string = [[NSString alloc] initWithFormat:@"I have %d apples", 16];
        NSLog(@"%@", string);
        
        //defining a new class Rectangle
        Rectangle *rect = [[Rectangle alloc] init];
        [rect setHeight:4 width:5];
        NSLog(@"Width = %d Height = %d", [rect width], [rect height]);
        NSLog(@"The area of the rectange is %d", [rect areaOfRectangle]);
        
        //example of the description method in the Rectangle class
        NSLog(@"%@", [rect description]);
        //can also be used as follows
        // NSLog(@"%@", rect);
        
        
        //NSArray
        NSArray *names = [[NSArray alloc] initWithObjects:@"Prabodh", @"Ram", @"Sita", @"Hari",@"Raghav",nil];
        
        for(int i = 0; i < [names count]; i++){
            NSLog(@"%@", [names objectAtIndex:i]);
        }
        
        //another way for initializing arrays
        NSArray *animals = @[@"Cat", @"Dog", @"Rabbit"];
        NSLog(@"The number of animals are %lu", [animals count]);
        for(int i = 0; i < [animals count]; i++){
            NSLog(@"Animal %d : %@", i+1,[animals objectAtIndex:i]);
        }
         
        
        //NSDictionary
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                              @"German Shephard", @"Dog",
                              @"Shark", @"Fish",
                              @"Broiler", @"Chicken",
                              nil];
        NSLog(@"%@", [dict objectForKey:@"Fish"]);
        NSLog(@"%@", [dict objectForKey:@"Chicken"]);
        NSLog(@"%lu", [dict count]);
        
             
        
        
    }
    return 0;
}







