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
    CustomInputView *customInputView;
    CLKeypad *keypad;
    
}

-(void)hello:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
    inputText = [[NSMutableString alloc ] init];
    customInputView = [[CustomInputView alloc] init];
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
    }else{
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"名前をください！"];
        ret = [result toErrorCallbackString:self.callbackId];
    }

}

-(void)hello
{
    NSLog(@"hello");
}

@end
