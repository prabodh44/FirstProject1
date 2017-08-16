//
//  Rectangle.m
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (void) setHeight:(int)newHeight {
    height = newHeight;
}

- (void) setWidth:(int)newWidth {
    width = newWidth;
}

- (void) setHeight:(int)newHeight width:(int)newWidth {
    height = newHeight;
    width = newWidth;
}

- (int) height {
    return height;
}

- (int) width {
    return width;
}
@end
