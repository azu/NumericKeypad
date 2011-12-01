//
//  NumericKeypadTextField.m
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumericKeypadTextField.h"
#import "NumericKeypadViewController.h"

@implementation NumericKeypadTextField
- (UIView *)inputView {
    numPadViewController = [[NumericKeypadViewController alloc]
                                                         initWithNibName:@"NumericKeypad" bundle:nil];
    [numPadViewController setActionSubviews:numPadViewController.view];
    // Controllerで操作できるように渡す
    numPadViewController.numpadTextFiled = self;
    NSLog(@"super view %@", [self superview]);
    NSLog(@"view frame %@", NSStringFromCGRect(numPadViewController.view.frame));
    return numPadViewController.view;
}


- (void)dealloc {
    [numPadViewController release];
    [super dealloc];
}


@end
