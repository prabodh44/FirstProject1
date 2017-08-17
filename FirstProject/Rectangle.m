//
//  Rectangle.m
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(id) init{
    /*
     
     the return type of the init method is id
     id is a generic object
     id is used as a return type because
     the init method can return any type of class
     
    */
    
    self = [super init]; //initializes all the classes the current class is derived from
    if(self){
        self.height = 5;
        self.width = 6;
    }
    
    return self;
}

- (void)setHeight:(int)newHeight {
    height = newHeight;
}

- (void)setWidth:(int)newWidth{
    width = newWidth;
}

- (void)setHeight:(int)newHeight width:(int)newWidth {
    height = newHeight;
    width = newWidth;
}

- (int)height{
    return height;
}

- (int)width{
    return width;
}

- (int)areaOfRectangle{
    return height * width;
}

- (NSString *) description{
    return @"This is the description method overridden from the NSObject superclass";
}

@end
