//
//  FileManager.m
//  FirstProject
//
//  Created by ith on 8/28/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

//the initialize class method is called only once.
//very useful to create a Singleton class
//is threadsafe


static FileManager *defaultManager;

//1st way to create Singleton
//+ (void) initialize{
//    static BOOL isInitialized = NO;
//    if(!isInitialized){
//        defaultManager = [[FileManager alloc] init];
//        isInitialized = YES;
//    }
//}
//
//+ (FileManager *) defaultManager{
//    return defaultManager;
//}

//another way to create a singleton class

+ (FileManager *) defaultManager{
    static FileManager *defaultManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultManager = [[self alloc] init];
    });
    
    return defaultManager;
    //always returns the same memory location
}

+ (FileManager *) anotherMethod{
    FileManager *newObject = [[FileManager alloc] init];
    return newObject;
    //returns different memory locations
}

@end
