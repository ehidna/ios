//
//  ViewController.m
//  Calculator
//
//  Created by fatih bulut on 28/04/14.
//  Copyright (c) 2014 fatih bulut. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(CalculatorBrain *)brain{
    if (!brain) {
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

- (IBAction)digitPressed:(UIButton *) sender{
    NSString *digit=[[sender titleLabel]text];
    if (userIsInTheMiddleOfTypingANumber) {
        [display setText:[[display text]stringByAppendingString:digit]];
    }else{
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}
- (IBAction)operationPressed:(UIButton *) sender{
    if(userIsInTheMiddleOfTypingANumber){
        [[self brain]setOperand:[[display text]doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain ]performOperation :operation];
    [display setText:[NSString stringWithFormat:@"%g",result]];
}

@end
