//
//  CustomTextField.m
//  bingo_client
//
//  Created by HARADA SHINYA on 12/19/12.
//
//

#import "CustomTextField.h"
#import "CustomInputView.h"

@implementation CustomTextField
{
    UIScrollView *scrollView;
    CustomInputView *customInputView;
}

-(UIView *)inputAccessoryView
{
    
    if (!_inputAccessoryView){
        CGRect frame = CGRectMake(5, 0,480,44);
        _inputAccessoryView = [[UIView alloc] initWithFrame:frame];
        _inputAccessoryView.backgroundColor = [UIColor clearColor];
        
        
        
        
        __block int i = 0;
        [@[@"x",@"sin",@"cos",@"tan",@"exp",@"^",@"logn()",@"=",@"history",@"bookmark"] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
            [self addButtonWithTitle:obj with:CGRectMake(44*i, 0, 44, 44)];
            i++;
        }];
    }
    
    scrollView =[[UIScrollView alloc]initWithFrame:_inputAccessoryView.frame];
    [scrollView setContentSize:CGSizeMake(480, 44)];
    scrollView.scrollEnabled = YES;
    scrollView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    scrollView.layer.borderWidth = 5.0f;
    [scrollView addSubview:_inputAccessoryView];
    return scrollView;
    
}
-(void)addButtonWithTitle:(NSString *)title with:(CGRect)frame
{
    
    
    UIButton *compButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [compButton setTitle:title forState:UIControlStateNormal];
    compButton.frame = frame;
    [compButton addTarget:self.delegate action:@selector(tappedChar:) forControlEvents:UIControlEventTouchUpInside];
    [_inputAccessoryView addSubview:compButton];
    
    
}

@end
