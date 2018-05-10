//
//  ViewController.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "ViewController.h"
#import "MPHelpService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"进入主页");
    MPHelpService *api = [[MPHelpService alloc] initWithParametes:@{@"softkey":@"ydb"}];
    [api startWithCompletionBlockWithSuccess:^(__kindof CNBaseRequest * _Nonnull request) {
        NSDictionary *resultData = request.responseObject;
        NSLog(@"%@",resultData);
    } failure:^(__kindof CNBaseRequest * _Nonnull request) {
        NSString *errorStr = [NSString stringWithFormat:@"%@",request.error];
        NSLog(@"%@",errorStr);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
