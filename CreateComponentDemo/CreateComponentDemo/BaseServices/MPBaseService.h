//
//  MPBaseService.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "CNRequest.h"

@interface MPBaseService : CNRequest

/**
 *字典拼接成字符串 用于get请求时用
 */
- (NSString *)stringWithDictionary:(NSDictionary *)dic;

@end
