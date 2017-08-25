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
#import "NSString-Movies.h"
#import "Dog.h"
#import "Person.h"
#import "Bird.h"
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
        
        //18th Aug 2017
        //Using @property
        Animals *animal = [[Animals alloc] init];
        animal.age = 8; // same as [animal setAge:8]
        animal.height = 9;
        
        
        int animalAge = animal.age; //same as [animal age]
        int animalHeight = animal.height;
        NSLog(@"Animal age: %d " ,animalAge);
        NSLog(@"Animal height: %d", animalHeight);
        
        //Using Categories
        NSString *movieString = @"Guardians of the galaxy.doc";
        if([movieString isAMovie]){
            NSLog(@"It is a movie format");
        }else{
            NSLog(@"It is not a not movie format");
        }
        
        NSLog(@"Length of characters: %lu", [movieString length]);
        
        NSString *movieWithNumber = @"Star Wars 3";
        NSString *movieWithoutNumber = [movieWithNumber removeNumbersFromString:movieWithNumber];
        NSLog(@"%@", movieWithNumber);
        NSLog(@"%@", movieWithoutNumber);
        
        //Selector
        NSMutableArray *randNames = [[NSMutableArray alloc] initWithObjects:@"John", @"Doe", @"Amy", @"Chang", nil];
        SEL message = @selector(addObject:);
        
        if([randNames respondsToSelector:message]){
            [randNames performSelector:message withObject:@"Added name"];
        }
        
        NSLog(@"%@", randNames);
        NSLog(@"String from selector is %@", NSStringFromSelector(message));
       
        
        Animals *newAnimal = [[Animals alloc] init];
        NSLog(@"Animal Description: %@", newAnimal);
        
        
        // 21st Aug 2017
        //NSNumber
        
        NSMutableArray *numberArray = [NSMutableArray arrayWithCapacity:4];
        for(int i = 0; i < 4; i++){
            [numberArray addObject:[NSNumber numberWithInt:i]];
        }
        
        for(int i = 0; i < 4; i++){
            NSLog(@"%@",[numberArray objectAtIndex:i]);
        }
        NSLog(@"The count is %lu",[numberArray count]);
        
        NSNumber *n1 = [numberArray objectAtIndex:1];
        int num1 = [n1 intValue];
        NSLog(@"%d", num1);
        
        //protocols (similar to interfaces)
        Dog *dog = [[Dog alloc] init];
        dog.age = 8;
        [dog log];
        
        // id with protocols
        Dog *newDog = [[Dog alloc] init];
        newDog.age = 9;
        id <Logging> someDog = newDog; //id is a generic object pointer. now pointing to newDog
        //id <Logging> is declaration of a generic object pointer that conforms to the Logging protocol
        [someDog log];
        
        id <Logging> someOtherDog = newDog;
        if([someOtherDog conformsToProtocol:@protocol(Logging)]){
            NSLog(@"someOtherDog conforms to the Logging protocol");
        }
        
        //Key Value Coding
        Person *me = [[Person alloc] init];
        [me setValue:@"Prabodh" forKey:@"name"];
        [me setValue:[NSNumber numberWithInt:24] forKey:@"age"];
        //NSNumber must be passed instead of int because
        //the setValue parameter id which is a points to a generic object
        
        NSLog(@"The value for the name property is %@", [me valueForKey:@"name"]);
        NSLog(@"The value for the age property is %@", [me valueForKey:@"age"]);
        
        
        //using a dictionary object to pass the parameters at once
        
        Person *tina = [[Person alloc] init];
        [tina setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                                   @"Tina", @"name",
                                                   [NSNumber numberWithInt:24], @"age", nil]];
        
//        NSLog(@"My name is %@", [anotherMe valueForKey:@"name"]);
//        NSLog(@"My age is %@",[anotherMe valueForKey:@"age"]);
        
        NSDictionary *meDictionary = [tina dictionaryWithValuesForKeys:[NSArray arrayWithObjects:@"age", @"name", nil]];
        NSLog(@"%@", meDictionary);
        
        //using the keypath
        Person *firstPerson = [[Person alloc] init];
        NSMutableString *aString = [NSMutableString stringWithFormat:@"hello"];
        [aString appendString:@"bye "];
        firstPerson.name = [aString mutableCopy];
        NSLog(@"%@", firstPerson.name);
        [aString appendString:@" bob"];
        NSLog(@"%@", firstPerson.name);
        
        NSMutableString *address = [NSMutableString stringWithFormat:@"ktm"];
        firstPerson.address = address;
        NSLog(@"%@", firstPerson.address);
        [address appendString:@" nepal"];
        NSLog(@"%@", firstPerson.address);
        
        

//        firstPerson.name = [firstPerson.name stringByAppendingString:@" kid"];
//        NSLog(@"%@", firstPerson.name);

//        Person *rahul = [[Person alloc] init];
//        [rahul setValue:@"Sundae" forKeyPath:@"cookie.name"];
//        [rahul setValue:@"Rahul" forKey: @"name"];
//        NSLog(@"Rahul's cookie: %@", [rahul valueForKeyPath:@"cookie.name"]);
//        NSLog(@"Rahul's name: %@", [rahul valueForKey:@"name"]);
        
        
        //keyValue observing
        Person *birdWatcher = [[Person alloc] init];
        Bird *sparrow = [[Bird alloc] init];
        
        [sparrow addObserver:birdWatcher
                  forKeyPath:@"hunger"
                     options:NSKeyValueObservingOptionNew
                     context:NULL];
        
        
        sparrow.hunger = 4;
        sparrow.hunger = 7;
        
        
        [sparrow removeObserver:birdWatcher forKeyPath:@"hunger"];
       
        //22nd August 2017
        //example of mutableCopy vs copy
        
        NSArray *org = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
        NSMutableArray *cpy = [org copy];
        
      //  [cpy removeObject:@"1"]; //cannot perform this operation; copy always returns an immutable object.
        NSLog(@"%@", cpy);
        NSMutableArray *mutableCpy = [org mutableCopy];
        [mutableCpy  removeObject:@"2"];
        NSLog(@"%@", mutableCpy);
        
        //Property List
        NSString *path = @"propertyList.plist";
        NSArray *namesArray = [NSArray arrayWithObjects:@"Prabodh", @"Prajula", @"Ashesh", nil];
        NSDictionary *tryDict = [NSDictionary dictionaryWithObjectsAndKeys:namesArray, @"nameArray",
                                 @"Another String", @"string", nil];
        
        [tryDict writeToFile:path atomically:YES];
        NSLog(@"File has been created");
        
        NSDictionary *newDict = [NSDictionary dictionaryWithContentsOfFile:path];
        NSLog(@"%@", newDict);
        
        //NSData
        NSArray *dataArray = [NSArray arrayWithObjects:@"First",@"Second", @"Third", nil];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dataArray];
        [data writeToFile:@"textFile.txt" atomically:YES];
        
        NSLog(@"data Array has been written to file");
        
        NSData *dataFromFile = [[NSData alloc] initWithContentsOfFile:@"textFile.txt"];
        NSArray *arrayFromFile = [NSKeyedUnarchiver unarchiveObjectWithData:dataFromFile];
        NSLog(@"%@", arrayFromFile);
        
        //NSData using NSCoding protocol
        //all objects that conform to the NSCoding protocol can be saved using NSData
        
        //saving the contents of the Rectangle Object
        Rectangle *rectangle1 = [[Rectangle alloc] initWithHeightandWidth:45 width:50];
        Rectangle *rectangle2 = [[Rectangle alloc] initWithHeightandWidth:40 width:60];
        
        NSArray *rectangleArray = [NSArray arrayWithObjects:rectangle1, rectangle2, nil];
        NSData *rectangleData = [NSKeyedArchiver archivedDataWithRootObject:rectangleArray];
    
        
        NSArray *rectangleArrayFromData = [NSKeyedUnarchiver unarchiveObjectWithData:rectangleData];
        NSLog(@"%@",rectangleArrayFromData);
        
        //Block
        //A block contains a block of code that can be executed
        //The scope of the block is the function inwhich it is declared
        
        int (^myBlock)(void) = ^{
            return 6;
        };
        
        NSLog(@"The value of the block is %d", myBlock());
        
        //block with parameters
        int (^paraBlock)(int, int) = ^(int num1, int num2){
            return num1 + num2;
        };
        
        NSLog(@"The sum of paraBlock(5,3) is %d", paraBlock(5,3));
        NSLog(@"The sum of paraBlock(8,8) is %d", paraBlock(8,8));
        
        
        int notAblockNumber = 7;
        int (^square) (void) = ^{
            return notAblockNumber * notAblockNumber;
        };
        notAblockNumber = 9;
        NSLog(@"The answer of the square block is %d", square());
        //the answer is 49 rather than 81
        //because the block copies the value that was first changed
        // and does not allow modification
        
        __block int anotherInt = 8;
        int (^cube) (void) = ^{
            return anotherInt * anotherInt * anotherInt;
        };
        anotherInt = 9;
        NSLog(@"The answer of the cube block is %d", cube());
        //answer is 729 instead of 256 because of __block keyword
        //__block denotes that the values inside the block can be changed
        
        //blocks inside methods
        
    }
    return 0;
}







