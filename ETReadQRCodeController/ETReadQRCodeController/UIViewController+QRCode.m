//
//  UIViewController+QRCode.m
//  Lodge
//
//  Created by Volley on 16/5/26.
//  Copyright © 2016年 Elegant Team. All rights reserved.
//

#import "UIViewController+QRCode.h"

@implementation UIViewController (QRCode)

- (void)showReaderCodeVCFinish:(void (^)(NSString *))finish
{
    if ([QRCodeReader supportsMetadataObjectTypes:@[AVMetadataObjectTypeQRCode,AVMetadataObjectTypeEAN13Code, AVMetadataObjectTypeEAN8Code, AVMetadataObjectTypeCode128Code]]) {
        static QRCodeReaderViewController *reader = nil;
        static dispatch_once_t onceToken;
        
        dispatch_once(&onceToken, ^{
            reader = [QRCodeReaderViewController new];
        });
        
        [reader setCompletionWithBlock:^(NSString * _Nullable resultAsString) {
            
            [reader stopScanning];
            finish(resultAsString);
            
            [reader.navigationController popViewControllerAnimated:YES];
        }];
        
        [self.navigationController pushViewController:reader animated:YES];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"请在iPhone的\"设置-隐私-相机\"选项中，允许此应用访问你的相机" delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil];
        
        [alert show];
    }
}

@end
