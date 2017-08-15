//
//  main.m
//  FirstProject
//
//  Created by ith on 8/15/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <Foundation/Foundation.h>
//an extern keyword is used when a variable has to be in another file
//where the variable is not defined
extern int externFirstVar;
extern int externSecondVar;
void exampleOfWhileLoop();
void exampleOfForLoop();
void exampleOfDoLoop();
//use of the define pre-processor
#define PI 3.1416

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
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
        
        NSLog(@"Example of while...loop");
        exampleOfWhileLoop();
        
        NSLog(@"Example of for..loop");
        exampleOfForLoop();
        
        NSLog(@"Example of do...loop");
        exampleOfDoLoop();
        
    }
    return 0;
}

void exampleOfWhileLoop(){
    int cnt = 0;
    while(cnt <= 10){
        if(cnt % 2 == 0){
            NSLog(@"The even number are %d", cnt);
        }
        cnt++;
    }
}

void exampleOfForLoop(){
    for(int i = 0; i < 10; i++){
        NSLog(@"%d\t", i);
        if(i >= 5){
            break;
        }
    }
    
    NSLog(@"Broken!!");
}

void exampleOfDoLoop(){
    int cnt = 0;
    do{
        cnt = cnt + 1;
        if(cnt == 6){
            continue;
        }
        NSLog(@"%d\t", cnt);
    }while(cnt < 10);
    
}




