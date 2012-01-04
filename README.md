### What is this?

![Numeric keypad](https://img.skitch.com/20120104-f9rqiwue6ne3wefjbdtifqbuw9.png)

Subclass of UITextField - Numeric keypad for iPad.

### Usage

1. Drag the NumPadTextField foler into your project.
2. You can use NumericKeypadTextField like this:

ViewController.h, ViewController.m

    #import <UIKit/UIKit.h>
    #import "NumericKeypadDelegate.h"

    @interface ViewController : UIViewController <NumericKeypadDelegate>
    @end

    @implementation ViewController
    #pragma mark - View lifecycle
    - (void)loadView {
        [super loadView];
        // UITextField Subclass
        NumericKeypadTextField *numPadTextField = [[NumericKeypadTextField alloc] init];
        numPadTextField.delegate = self;// delegate for saveActionFormTextField
        numPadTextField.placeholder = @"NUMPAD";
        numPadTextField.font = [UIFont systemFontOfSize:40];
        numPadTextField.frame = CGRectMake(50, 50, 200, 40);
        [self.view addSubview:numPadTextField];
        [numPadTextField becomeFirstResponder];
        [numPadTextField release];
    }

    #pragma mark - NumericKeypad delegate
    - (void)saveActionFormTextField:(UITextField *)textField {
        NSLog(@"text input %@", textField.text);
    }

    @end



NumericKeypad is designed in Interface Builder.

### License

MIT License