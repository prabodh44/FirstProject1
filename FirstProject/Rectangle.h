//
//  Rectangle.h
//  FirstProject
//
//  Created by ith on 8/16/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject{
    int height;
    int width;
}

- (void) setHeight : (int)newHeight;
- (void) setWidth : (int)newWidth;
- (void) setHeight : (int)newHeight width : (int)newWidth;

- (int) height;
- (int) width;
@end
