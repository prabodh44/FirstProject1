//
//  Rectangle.m
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(id) initWithHeightandWidth:(int)height width:(int)width{
    if(self = [super init]){
        self.height = height;
        self.width = width;
    }
    
    return self;
}

-(id) initWithWidth:(int)width{
    self = [self initWithHeightandWidth:10 width:20];
    return self;
}

-(id) initWithHeight:(int)height{
    self = [self initWithHeightandWidth:10 width:30];
    return self;
}

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
    NSMutableString *string = [NSMutableString stringWithString:@"Inside the description method\n"];
    [string appendFormat:@"Height: %d, Width: %d", height,width];
    
    return string;
}

@end
