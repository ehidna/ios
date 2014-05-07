//
//  CalculatorBrain.h
//  Calculator
//
//  Created by fatih bulut on 28/04/14.
//  Copyright (c) 2014 fatih bulut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}
-(void)setOperand:(double) inOperand;
-(double)performOperation:(NSString *)operation;

@end
