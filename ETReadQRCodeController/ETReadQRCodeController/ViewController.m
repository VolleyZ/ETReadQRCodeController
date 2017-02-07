//
//  ViewController.m
//  ETReadQRCodeController
//
//  Created by Volley on 2017/1/20.
//  Copyright © 2017年 Elegant Team. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+QRCode.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)scanAction:(UIButton *)sender
{
    [self showReaderCodeVCFinish:^(NSString *resultString) {
        
        [[[UIAlertView alloc] initWithTitle:nil message:resultString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
