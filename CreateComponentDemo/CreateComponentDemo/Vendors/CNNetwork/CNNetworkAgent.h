//
//  CNNetworkAgent.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CNBaseRequest;

///  CNNetworkAgent is the underlying class that handles actual request generation,
///  serialization and response handling.
@interface CNNetworkAgent : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

///  Get the shared agent.
+ (CNNetworkAgent *)sharedAgent;

///  Add request to session and start it.
- (void)addRequest:(CNBaseRequest *)request;

///  Cancel a request that was previously added.
- (void)cancelRequest:(CNBaseRequest *)request;

///  Cancel all requests that were previously added.
- (void)cancelAllRequests;

///  Return the constructed URL of request.
///
///  @param request The request to parse. Should not be nil.
///
///  @return The result URL.
- (NSString *)buildRequestUrl:(CNBaseRequest *)request;

@end

NS_ASSUME_NONNULL_END
