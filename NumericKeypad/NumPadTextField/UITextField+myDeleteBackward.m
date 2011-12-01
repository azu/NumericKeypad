//
//  Created by azu on 11/12/01.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UITextField+myDeleteBackward.h"


@implementation UITextField (myDeleteBackward)
- (void)myDeleteBackward {
    if ([self conformsToProtocol:@protocol(UITextInput)]){
        // iOS5 and later
        [self deleteBackward];
        // Or do below line if you are not deploy-targeting 5.0 or above and want to avoid warnings
        //[textField performSelector:@selector(deleteBackward)];
    } else {
        @try {
            //check current selected range
            NSRange selectedRange = [[self valueForKey:@"selectionRange"] rangeValue];
            if (selectedRange.location == NSNotFound){
                selectedRange = NSMakeRange([[self text] length], 0);
            }
            if (selectedRange.location < 1){
                return;
            }

            //delete one char
            NSRange deleteRange = (selectedRange.length > 0) ? selectedRange : NSMakeRange(selectedRange.location - 1, 1);
            self.text = [self.text stringByReplacingCharactersInRange:deleteRange withString:@""];

            //adjust the selected range to reflect the changes
            selectedRange.location = deleteRange.location;
            selectedRange.length = 0;
            [self setValue:[NSValue valueWithRange:selectedRange] forKey:@"selectionRange"];
        } @catch (NSException *exception) {
            NSLog(@"deleteBackword failed but catched. %@", exception);
        } @finally {}
    }
}
@end