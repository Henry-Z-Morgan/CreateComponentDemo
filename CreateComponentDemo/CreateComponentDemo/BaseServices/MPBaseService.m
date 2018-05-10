//
//  MPBaseService.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "MPBaseService.h"

@implementation MPBaseService

- (instancetype)init {
    self = [super init];
    if (self) {
        self.ignoreCache = YES;
    }
    return self;
}

/**
 *请求超时时间
 */
- (NSTimeInterval)requestTimeoutInterval {
    return 30;
}

/**
 *接口请求头参数
 */
- (NSDictionary *)requestHeaderFieldValueDictionary {
//    NSString *version = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleShortVersionString"];
//    NSString *sysVersion = [[UIDevice currentDevice] systemVersion];
//    NSString *appVersion = [NSString stringWithFormat:@"%@_iOS_%@",sysVersion,version];
//    //从钥匙串中取出tokenkey
//    NSString *systemToken = [SystemConfigFactory getSystemToken];
//    systemToken = systemToken == nil ? @"" : systemToken;
    NSDictionary *dic = @{@"tokenKey":@"5d8f5bf3-a168-4c3e-b6b4-c9f4856b1f57",
                          @"type":@"0",
                          @"App-Version":@"11.3_iOS_3.0.5"};
//    NSString *str = [NSString stringWithFormat:@"共用请求参数：%@",dic];
//    DBLogD(str);
    return dic;
}

/**
 *设置网络请求返回数据类型
 */
- (CNResponseSerializerType)responseSerializerType {
    return CNResponseSerializerTypeJSON;
}

/**
 *设置网络请求数据类型
 */
- (CNRequestSerializerType)requestSerializerType {
    return CNRequestSerializerTypeJSON;
}

/**
 *请求方法
 */
- (CNRequestMethod)requestMethod {
    return CNRequestMethodPOST;
}

/**
 *字典拼接成字符串 用于get请求时用
 */
- (NSString *)stringWithDictionary:(NSDictionary *)dic {
    NSArray *keys = [dic allKeys];
    NSArray *values = [dic allValues];
    NSString *str = @"";
    for (NSInteger index = 0; index < keys.count; index++) {
        if (index == 0) {
            str = [NSString stringWithFormat:@"%@=%@",keys[index],values[index]];
        } else {
            str = [NSString stringWithFormat:@"%@&%@=%@",str,keys[index],values[index]];
        }
    }
    return str;
}

@end
