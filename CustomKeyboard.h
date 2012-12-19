//
//  CustomKeyboard.h
//  bingo_client
//
//  Created by HARADA SHINYA on 12/18/12.
//
//

#import <Cordova/CDV.h>
#import "CustomTextField.h"
#import "CustomInputView.h"

@interface CustomKeyboard : CDVPlugin<UITextViewDelegate>


@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *callbackId;
-(void)hello:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;

@end
