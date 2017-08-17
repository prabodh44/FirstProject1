//
//  Computer.h
//  FirstProject
//
//  Created by ith on 8/17/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chip.h"

@interface Computer : NSObject{
    Chip *chip;
}

- (void) setChip:(Chip *)newChip;
- (Chip *)chip;
@end
