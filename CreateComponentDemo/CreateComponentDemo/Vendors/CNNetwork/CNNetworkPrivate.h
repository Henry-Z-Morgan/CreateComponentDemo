//
//  CNNetworkPrivate.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CNRequest.h"
#import "CNBaseRequest.h"
#import "CNBatchRequest.h"
#import "CNChainRequest.h"
#import "CNNetworkAgent.h"
#import "CNNetworkConfig.h"


NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT void CNLog(NSString *format, ...) NS_FORMAT_FUNCTION(1,2);

@class AFHTTPSessionManager;

@interface CNNetworkUtils : NSObject

+ (BOOL)validateJSON:(id)json withValidator:(id)jsonValidator;

+ (void)addDoNotBackupAttribute:(NSString *)path;

+ (NSString *)md5StringFromString:(NSString *)string;

+ (NSString *)appVersionString;

+ (NSStringEncoding)stringEncodingWithRequest:(CNBaseRequest *)request;

+ (BOOL)validateResumeData:(NSData *)data;

@end

@interface CNRequest (Getter)

- (NSString *)cacheBasePath;

@end

@interface CNBaseRequest (Setter)

@property (nonatomic, strong, readwrite) NSURLSessionTask *requestTask;
@property (nonatomic, strong, readwrite, nullable) NSData *responseData;
@property (nonatomic, strong, readwrite, nullable) id responseJSONObject;
@property (nonatomic, strong, readwrite, nullable) id responseObject;
@property (nonatomic, strong, readwrite, nullable) NSString *responseString;
@property (nonatomic, strong, readwrite, nullable) NSError *error;

@end

@interface CNBaseRequest (RequestAccessory)

- (void)toggleAccessoriesWillStartCallBack;
- (void)toggleAccessoriesWillStopCallBack;
- (void)toggleAccessoriesDidStopCallBack;

@end

@interface CNBatchRequest (RequestAccessory)

- (void)toggleAccessoriesWillStartCallBack;
- (void)toggleAccessoriesWillStopCallBack;
- (void)toggleAccessoriesDidStopCallBack;

@end

@interface CNChainRequest (RequestAccessory)

- (void)toggleAccessoriesWillStartCallBack;
- (void)toggleAccessoriesWillStopCallBack;
- (void)toggleAccessoriesDidStopCallBack;

@end

@interface CNNetworkAgent (Private)

- (AFHTTPSessionManager *)manager;
- (void)resetURLSessionManager;
- (void)resetURLSessionManagerWithConfiguration:(NSURLSessionConfiguration *)configuration;

- (NSString *)incompleteDownloadTempCacheFolder;

@end

NS_ASSUME_NONNULL_END
