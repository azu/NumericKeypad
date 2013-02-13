//
//  NumericKeypadViewController.m
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumericKeypadViewController.h"
#import "NumericKeypadDelegate.h"

@implementation NumericKeypadViewController

#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return NO;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.view.backgroundColor = [UIColor grayColor];
	[self.saveButton setTitle:NSLocalizedString(@"Save", @"Title for save button on numeric keypad") forState:UIControlStateNormal];
}

- (void)setActionSubviews :(UIView *)view {
	for (UIButton *button in view.subviews) {
		if ([button isKindOfClass:[UIButton class]]){
			[button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
		}
	}
}

- (IBAction)buttonPress:(id)sender {
	UIButton *button = (UIButton *) sender;

	if (button.tag == 1){
		[self.numpadTextField deleteBackward];
	} else if (button.tag == 2) {
		if ([self.delegate respondsToSelector:@selector(saveActionFormTextField:)]){
			[self.delegate saveActionFormTextField:self.numpadTextField];
		}
	} else {
		[self.numpadTextField setText:[self.numpadTextField.text stringByAppendingString:button.titleLabel.text]];
	}
}

- (void)viewDidUnload {
	[self setSaveButton:nil];
	[super viewDidUnload];
}

@end
