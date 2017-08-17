//
//  main.m
//  FirstProject
//
//  Created by ith on 8/15/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Computer.h"
#import "Animals.h"

//an extern keyword is used when a variable has to be in another file
//where the variable is not defined
extern int externFirstVar;
extern int externSecondVar;
//use of the define pre-processor
#define PI 3.1416

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //Aug 15th 2017
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
        
        //Aug 16th 2017
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
        
        
        //Aug 17th 2016
        //Fast enumeration(similar to the foreach loop)
        
        //declaring a temporary NSArray
        NSArray *array = [NSArray arrayWithObjects:@"Prabodh", @"Tuladhar", @"Mitra", @"School", nil];
        for(NSString *string in array){
            NSLog(@"%@",string);
        }
        
        NSArray *anotherArray = [[NSArray alloc] initWithObjects:@"Tina",@42, @"Prabhat", @86 , nil];
        
        for(NSString *string in anotherArray){
            NSLog(@"%@",string);
        }
        
        //declaring a temporary dictionary
        NSDictionary *animalsDict = [NSDictionary dictionaryWithObjectsAndKeys:
                        @"Cow", @"Mammal",
                        @"Shark", @"Fish",
                        @"Cobra", @"Reptile",
                        nil];
        
        for(NSString *string in animalsDict){
            NSLog(@"Key : %@ \t Value: %@\n", string, [animalsDict objectForKey:string]);
        }
        
        //declaring a temporay NSMutableArray with initial size 5
        NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:5];
        [mutableArray addObject:@"First Object"];
        [mutableArray addObject:@"Second Object"];
        [mutableArray addObject:@"Third Object"];
        
        [mutableArray insertObject:@"Fourth Object" atIndex:3];
        [mutableArray replaceObjectAtIndex:3 withObject:@"Replaced at index"];
        
        
        for(int i = 0; i < [mutableArray count]; i++){
            NSLog(@"Array items: %@", [mutableArray objectAtIndex:i]);
        }
        
        Rectangle *rect2 = [[Rectangle alloc] init];
        NSLog(@"%@", rect2);
        
        //[rect2 retainCount];
        //[rect2 retain];
        
        
        //using convenience initializers
        Rectangle *rect3 = [[Rectangle alloc] initWithHeightandWidth:5 width:10];
        NSLog(@"%@", rect3);
        
        
        
        //Object ownership
//        Computer *comp = [[Computer alloc] init];
//        Chip *chip = [[Chip alloc] init];
//        
//        [comp setChip:chip];
        
        //[comp release] ARC forbids the explicit call to release method;
        //relase the memory pointed by rhe comp variable
        
        //[comp chip];
        
        //Using @property
        Animals *animal = [[Animals alloc] init];
        animal.age = 8;
        animal.height = 9;
        
        NSLog(@"Animal age: %d " ,[animal age]);
        NSLog(@"Animal height: %d", [animal height]);
    }
    return 0;
}







