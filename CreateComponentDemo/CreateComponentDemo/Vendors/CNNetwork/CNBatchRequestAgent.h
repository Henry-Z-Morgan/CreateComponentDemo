//
//  CNBatchRequestAgent.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CNBatchRequest;

///  CNBatchRequestAgent handles batch request management. It keeps track of all
///  the batch requests.
@interface CNBatchRequestAgent : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

///  Get the shared batch request agent.
+ (CNBatchRequestAgent *)sharedAgent;

///  Add a batch request.
- (void)addBatchRequest:(CNBatchRequest *)request;

///  Remove a previously added batch request.
- (void)removeBatchRequest:(CNBatchRequest *)request;

@end

NS_ASSUME_NONNULL_END
