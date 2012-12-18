//
//  CustomTextField.m
//  bingo_client
//
//  Created by HARADA SHINYA on 12/19/12.
//
//

#import "CustomTextField.h"

@implementation CustomTextField

-(UIView *)inputAccessoryView
{
    
    if (!_inputAccessoryView){
        CGRect frame = CGRectMake(0, 0, 100, 44);
        _inputAccessoryView = [[UIView alloc] initWithFrame:frame];
        _inputAccessoryView.backgroundColor = [UIColor clearColor];
        UIButton *compButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        compButton.frame = CGRectMake(0,0,44,44);
        [compButton setTitle:@"x" forState:UIControlStateNormal];
        [compButton addTarget:self action:@selector(tappedEnter:) forControlEvents:UIControlEventTouchUpInside];
        [_inputAccessoryView addSubview:compButton];
        
    }
    return _inputAccessoryView;
    
}

-(void)tappedEnter:(id)sender
{
    NSLog(@"tapped");
    
}
@end
