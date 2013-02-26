//
//  NumericKeypadViewController.h
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumericKeypadViewController : UIViewController {
}

@property(strong, nonatomic) UITextField *numpadTextField;
@property(weak, nonatomic) id delegate;
@property(weak, nonatomic) IBOutlet UIButton *saveButton;
@property(weak, nonatomic) IBOutlet UIButton *backButton;
@property(weak, nonatomic) IBOutlet UIButton *decimalButton;

- (void)setActionSubviews:(UIView *)view;

- (IBAction)buttonPress:(id)sender;


@end
