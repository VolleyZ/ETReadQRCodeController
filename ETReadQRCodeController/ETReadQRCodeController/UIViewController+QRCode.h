//
//  UIViewController+QRCode.h
//  Lodge
//
//  Created by Volley on 16/5/26.
//  Copyright © 2016年 Elegant Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QRCodeReaderViewController.h"
#import "QRCodeReader.h"

@interface UIViewController (QRCode)

- (void)showReaderCodeVCFinish:(void(^)(NSString *resultString))finish;

@end
