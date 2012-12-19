//
//  CustomKeyboard.m
//  bingo_client
//
//  Created by HARADA SHINYA on 12/18/12.
//
//

#import "CustomKeyboard.h"

@implementation CustomKeyboard
{
    CustomTextField *customTextField;
    NSMutableString *inputText;
    
    UITextView *numberField ;
}

-(void)hello:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
    inputText = [[NSMutableString alloc ] init];
    self.callbackId = [arguments pop];
    customTextField = [[CustomTextField alloc] init];
    customTextField.delegate = self;
    
    NSString *name = [arguments objectAtIndex:0];
    CDVPluginResult *result;
    NSString *ret;
    
    if (![name isEqual:@""]){
        NSString *str = [NSString stringWithFormat:@"Hello %@",[arguments objectAtIndex:0]];
        NSLog(@"str is %@",str);
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        ret = [result toSuccessCallbackString:self.callbackId];
        NSLog(@"ok!");
        
        
        
        numberField = [[UITextView alloc] initWithFrame:CGRectMake(10,10, 120,44)];
        numberField.inputAccessoryView = [customTextField inputAccessoryView];
        [numberField setText:@"type some thing"];
        [numberField setKeyboardType:UIKeyboardTypeNumbersAndPunctuation];
        [[self.viewController view] addSubview:numberField];
        
        
        
        
    }else{
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"名前をください！"];
        ret = [result toErrorCallbackString:self.callbackId];
    }
    [self writeJavascript:ret];
}

-(void)tappedChar:(id)sender
{
    NSString *tmp = numberField.text;
    UIButton *btn = (UIButton *)sender;
    NSString *ch = [btn.titleLabel text];
    NSLog(@"ch is %@",ch);
    NSString *res = [tmp stringByAppendingString:ch];
    numberField.text = res;
}
-(void)hello
{
    NSLog(@"hello");
}
@end
