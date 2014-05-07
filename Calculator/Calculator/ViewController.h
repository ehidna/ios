//
//  ViewController.h
//  Calculator
//
//  Created by fatih bulut on 28/04/14.
//  Copyright (c) 2014 fatih bulut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"
@interface ViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *) sender;
- (IBAction)operationPressed:(UIButton *) sender;


@end
