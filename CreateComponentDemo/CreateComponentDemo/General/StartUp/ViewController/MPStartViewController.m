//
//  MPStartViewController.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "MPStartViewController.h"
#import "MPHelpService.h"

@interface MPStartViewController ()

@end

@implementation MPStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
