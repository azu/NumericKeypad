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

@property(nonatomic, strong) UITextField *numpadTextField;
@property(nonatomic, weak) id delegate;

- (void)setActionSubviews:(UIView *)view;

- (IBAction)buttonPress:(id)sender;


@end
