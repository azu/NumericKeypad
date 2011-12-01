//
//  NumericKeypadViewController.m
//  NumericKeypad
//
//  Created by  on 11/12/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumericKeypadViewController.h"
#import "UITextField+myDeleteBackward.h"
@implementation NumericKeypadViewController

@synthesize numpadTextFiled;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)updateOutlets {
    self.view.backgroundColor = [UIColor grayColor];

}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateOutlets];
}

// subviewsのボタンにイベントを付ける
- (void)setActionSubviews :(UIView *)view {
    UIButton *button;
    for (button in view.subviews) {
        if ([button isKindOfClass:[UIButton class]]){
            [button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}



// キーボード上のボタン選択値をテキストフィールドにセット
- (IBAction)buttonPress:(id)sender {
    UIButton *bt = (UIButton *) sender;
    NSString *titleLabel = bt.titleLabel.text;
    NSLog(@"label : %@ , sender %@ ", titleLabel, sender);
    if ([titleLabel isEqualToString:@"⌫"]){
        [self.numpadTextFiled myDeleteBackward];
    } else {
        [self.numpadTextFiled setText:[self.numpadTextFiled.text stringByAppendingString:titleLabel]];
    }
}


- (void)dealloc {
    [numpadTextFiled release];
    [super dealloc];
}

@end
