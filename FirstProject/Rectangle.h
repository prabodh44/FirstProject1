//
//  Rectangle.h
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject{
    //declare properties here
    int height;
    int width;
}

//declare methods here

//these are the setter methods
- (void)setHeight:(int)newHeight;
- (void)setWidth:(int)newWidth;
- (void)setHeight:(int)newHeight width:(int)newWidth;


//these are the getter methods
- (int)height;
- (int)width;

- (int)areaOfRectangle;

@end
