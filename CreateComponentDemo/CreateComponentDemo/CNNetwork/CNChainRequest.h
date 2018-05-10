//
//  CNChainRequest.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CNChainRequest;
@class CNBaseRequest;
@protocol CNRequestAccessory;

///  The CNChainRequestDelegate protocol defines several optional methods you can use
///  to receive network-related messages. All the delegate methods will be called
///  on the main queue. Note the delegate methods will be called when all the requests
///  of chain request finishes.
@protocol CNChainRequestDelegate <NSObject>

@optional
///  Tell the delegate that the chain request has finished successfully.
///
///  @param chainRequest The corresponding chain request.
- (void)chainRequestFinished:(CNChainRequest *)chainRequest;

///  Tell the delegate that the chain request has failed.
///
///  @param chainRequest The corresponding chain request.
///  @param request      First failed request that causes the whole request to fail.
- (void)chainRequestFailed:(CNChainRequest *)chainRequest failedBaseRequest:(CNBaseRequest*)request;

@end

typedef void (^CNChainCallback)(CNChainRequest *chainRequest, CNBaseRequest *baseRequest);

///  CNBatchRequest can be used to chain several CNRequest so that one will only starts after another finishes.
///  Note that when used inside CNChainRequest, a single CNRequest will have its own callback and delegate
///  cleared, in favor of the batch request callback.
@interface CNChainRequest : NSObject

///  All the requests are stored in this array.
- (NSArray<CNBaseRequest *> *)requestArray;

///  The delegate object of the chain request. Default is nil.
@property (nonatomic, weak, nullable) id<CNChainRequestDelegate> delegate;

///  This can be used to add several accossories object. Note if you use `addAccessory` to add acceesory
///  this array will be automatically created. Default is nil.
@property (nonatomic, strong, nullable) NSMutableArray<id<CNRequestAccessory>> *requestAccessories;

///  Convenience method to add request accessory. See also `requestAccessories`.
- (void)addAccessory:(id<CNRequestAccessory>)accessory;

///  Start the chain request, adding first request in the chain to request queue.
- (void)start;

///  Stop the chain request. Remaining request in chain will be cancelled.
- (void)stop;

///  Add request to request chain.
///
///  @param request  The request to be chained.
///  @param callback The finish callback
- (void)addRequest:(CNBaseRequest *)request callback:(nullable CNChainCallback)callback;

@end

NS_ASSUME_NONNULL_END
