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
- (void)updateOutlets {
    self.view.backgroundColor = [UIColor grayColor];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateOutlets];
}

- (void)setActionSubviews :(UIView *)view {
    UIButton *button;
    for (button in view.subviews) {
        if ([button isKindOfClass:[UIButton class]]){
            [button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (IBAction)buttonPress:(id)sender {
    UIButton *bt = (UIButton *) sender;
    NSString *titleLabel = bt.titleLabel.text;

    if ([titleLabel isEqualToString:@"⌫"]){
        [self.numpadTextField deleteBackward];
    } else if ([titleLabel isEqualToString:@"Save"]){
        if ([self.delegate respondsToSelector:@selector(saveActionFormTextField:)]){
            [self.delegate saveActionFormTextField:self.numpadTextField];
        }
    } else {
        [self.numpadTextField setText:[self.numpadTextField.text stringByAppendingString:titleLabel]];
    }
}

@end
