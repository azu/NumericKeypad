//
//  NumericKeypadViewController.h
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumericKeypadViewController : UIViewController {
    UITextField *numpadTextFiled;
}
@property(nonatomic, retain) UITextField *numpadTextFiled;

- (void)setActionSubviews:(UIView *)view;

- (IBAction)buttonPress:(id)sender;



@end
