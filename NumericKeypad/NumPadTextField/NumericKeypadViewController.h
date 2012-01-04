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
    id delegate;
}
@property(nonatomic, retain) UITextField *numpadTextFiled;
@property(nonatomic, retain) id delegate;


- (void)setActionSubviews:(UIView *)view;

- (IBAction)buttonPress:(id)sender;


@end
