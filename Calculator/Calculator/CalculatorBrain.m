//
//  CalculatorBrain.m
//  Calculator
//
//  Created by fatih bulut on 28/04/14.
//  Copyright (c) 2014 fatih bulut. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(void)setOperand:(double) inOperand{
    operand = inOperand;
}
-(void)performWaitingOperation{
    if ([@"+" isEqual:waitingOperation]) {
        operand=waitingOperand + operand;
    }else if([@"-" isEqual:waitingOperation]){
        operand=waitingOperand - operand;

    }else if([@"*" isEqual:waitingOperation]){
        operand=waitingOperand * operand;
        
    }else ([@"/" isEqual:waitingOperation]);{
        operand=waitingOperand / operand;
        
    }
}
-(double)performOperation:(NSString *)operation{
    if ([operation isEqual:@"sqrt"]) {
        operand=sqrt(operand);
    }else{
        [self performWaitingOperation];
        waitingOperation=operation;
        waitingOperand=operand;
        
    }
    return operand;
}

@end
