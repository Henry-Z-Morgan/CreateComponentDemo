//
//  MPHelpService.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "MPHelpService.h"

@interface MPHelpService ()

@property (nonatomic, strong) NSDictionary *parametes;

@end

@implementation MPHelpService

- (instancetype)initWithParametes:(NSDictionary *)dic {
    if (self = [super init]) {
        self.parametes = [NSDictionary dictionaryWithDictionary:dic];
    }
    return self;
}

- (NSString *)requestUrl {
    return @"sys_data/server_check";
}

/**
 *接口请求头参数
 */
- (NSDictionary *)requestHeaderFieldValueDictionary {
//    NSDictionary *dict = [[NSBundle mainBundle] infoDictionary];
//    NSString *version = [dict valueForKey:@"CFBundleShortVersionString"];
//    NSString *currentUUID = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
//    NSString *sysVersion = [[UIDevice currentDevice] systemVersion];
//    NSString *appVersion = [NSString stringWithFormat:@"%@_ios_%@",sysVersion,version];
    NSDictionary *dic = @{@"App-Version":@"11.3_ios_3.0.5",
                          @"deviceId":@"BAD9053D-1095-407A-B72C-16A0BFECEF3B"};
    return dic;
}

- (CNRequestMethod)requestMethod {
    return CNRequestMethodGET;
}

- (id)requestArgument {
    return self.parametes;
}


@end
