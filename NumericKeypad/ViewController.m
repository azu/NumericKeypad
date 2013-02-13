//
//  ViewController.m
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumPadTextField/NumericKeypadTextField.h"
#import "ViewController.h"

@implementation ViewController

#pragma mark - View lifecycle
- (void)loadView {
    [super loadView];

    NumericKeypadTextField *numPadTextField = [[NumericKeypadTextField alloc] init];
    numPadTextField.numericKeypadDelegate = self;// delegate for saveActionFormTextField
    numPadTextField.placeholder = @"NUMPAD";
    numPadTextField.font = [UIFont systemFontOfSize:40];
    numPadTextField.frame = CGRectMake(50, 50, 200, 40);
    [self.view addSubview:numPadTextField];
    [numPadTextField becomeFirstResponder];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}

#pragma mark - NumericKeypadDelegate

- (void)saveActionFormTextField:(UITextField *)textField {
    NSLog(@"text input %@", textField.text);
}

@end
