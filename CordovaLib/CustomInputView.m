//
//  CustomInputView.m
//  CordovaLib
//
//  Created by HARADA SHINYA on 12/19/12.
//
//

#import "CustomInputView.h"

@implementation CustomInputView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadInputView];
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
    }
    return self;
}
-(void)loadInputView
{
    
    UINib *inputViewNib = [UINib nibWithNibName:@"customKeyboardView" bundle:nil];
    [inputViewNib instantiateWithOwner:self options:nil];
    
}


@end
