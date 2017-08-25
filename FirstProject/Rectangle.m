//
//  Rectangle.m
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (void) encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeInt:height forKey:@"height"];
    [aCoder encodeInt:width forKey:@"width"];
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if(self){
        height = [aDecoder decodeIntForKey:@"height"];
        width = [aDecoder decodeIntForKey:@"width"];
    }
    return self;
}


-(id) initWithHeightandWidth:(int)h width:(int)w{
    if(self = [super init]){
        height = h;
        width = w;
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
    
    //self = [super init]; //initializes all the classes the current class is derived from
    //the above line can be removed as this method can call the designated initializer
    if([self initWithHeightandWidth:1 width:1]){
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
    NSMutableString *string = [NSMutableString stringWithString:@"Inside the description method\n "];
    self.name = [NSString stringWithFormat:@"naame is hari"];
    [string appendFormat:@"Height: %d, Width: %d name:%@", height,width, self.name];
    
    return string;
}

// this is the method of the NSObject
//which is being overridden

@end
