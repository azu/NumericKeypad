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
	UIView *view = nil;
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
		numPadViewController = [[NumericKeypadViewController alloc] initWithNibName:@"NumericKeypad" bundle:nil];
		[numPadViewController setActionSubviews:numPadViewController.view];
		numPadViewController.delegate = self.numericKeypadDelegate;

		numPadViewController.numpadTextField = self;
		view = numPadViewController.view;
	}
	
	return view;
}

@end
