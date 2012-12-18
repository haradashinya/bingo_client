//
//  CustomKeyboard.m
//  bingo_client
//
//  Created by HARADA SHINYA on 12/18/12.
//
//

#import "CustomKeyboard.h"

@implementation CustomKeyboard

-(void)hello:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
    self.callbackId = [arguments pop];
    
    NSString *name = [arguments objectAtIndex:0];
    CDVPluginResult *result;
    NSString *ret;
    
    if (![name isEqual:@""]){
        NSString *str = [NSString stringWithFormat:@"Hello %@",[arguments objectAtIndex:0]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        ret = [result toSuccessCallbackString:self.callbackId];
        NSLog(@"ok!");
        
        
        
        UITextField *numberField = [[UITextField alloc] initWithFrame:CGRectMake(10,10, 120,44)];
        [numberField setText:@"type some thing"];
        [numberField setKeyboardType:UIKeyboardTypeNumberPad];
        [[self.viewController view] addSubview:numberField];
        
        
    }else{
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"名前をください！"];
        ret = [result toErrorCallbackString:self.callbackId];
    }
    [self writeJavascript:ret];
}
@end
