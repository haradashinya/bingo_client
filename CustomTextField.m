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
        __block int i = 0;
        [@[@"x",@"sin",@"cos",@"tan",@"exp",@"^",@"logn()"] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            [self addButtonWithTitle:obj with:CGRectMake(44*i, 0, 44, 44)];
            i++;
        }];
    }
    return _inputAccessoryView;
    
}
-(void)addButtonWithTitle:(NSString *)title with:(CGRect)frame
{
    
        UIButton *compButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [compButton setTitle:title forState:UIControlStateNormal];
        compButton.frame = frame;
        [compButton addTarget:self action:@selector(tappedEnter:) forControlEvents:UIControlEventTouchUpInside];
        [_inputAccessoryView addSubview:compButton];
    
}

-(void)tappedEnter:(id)sender
{
    NSLog(@"tapped");
    
}
@end
