//
//  CNChainRequestAgent.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CNChainRequest;

///  CNChainRequestAgent handles chain request management. It keeps track of all
///  the chain requests.
@interface CNChainRequestAgent : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

///  Get the shared chain request agent.
+ (CNChainRequestAgent *)sharedAgent;

///  Add a chain request.
- (void)addChainRequest:(CNChainRequest *)request;

///  Remove a previously added chain request.
- (void)removeChainRequest:(CNChainRequest *)request;

@end

NS_ASSUME_NONNULL_END
