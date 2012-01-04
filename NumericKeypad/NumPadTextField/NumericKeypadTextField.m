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
@synthesize delegate;

- (UIView *)inputView {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        numPadViewController = [[NumericKeypadViewController alloc]
                                                             initWithNibName:@"NumericKeypad" bundle:nil];
        [numPadViewController setActionSubviews:numPadViewController.view];
        numPadViewController.delegate = self.delegate;
        // Controllerで操作できるように渡す
        numPadViewController.numpadTextFiled = self;
        return numPadViewController.view;
    }else {
        return nil;
    }
}


- (void)dealloc {
    [numPadViewController release];
    [delegate release];
    delegate = nil;
    [super dealloc];
}


@end
