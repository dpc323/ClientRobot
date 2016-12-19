//
//  ViewController.m
//  ClientRobot
//
//  Created by hanarobot on 16/12/6.
//  Copyright © 2016年 hanarobot. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"
#import "RCTBundleURLProvider.h"
#import "RCTHotUpdate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)highScoreButtonPressed:(id)sender {
    NSLog(@"High Score Button Pressed");
    //NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://192.168.1.112:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"ClientRobot"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Alex",
                   @"value": @"42"
                   },
               @{
                   @"name" : @"Joel",
                   @"value": @"10"
                   }
               ]
       }
                          launchOptions    : nil];
    

    UIViewController *vc = [[UIViewController alloc] init];
    
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
