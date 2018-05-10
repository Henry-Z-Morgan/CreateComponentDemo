//
//  CNNetwork.h
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//


#import <Foundation/Foundation.h>

#ifndef _CNNETWORK_
#define _CNNETWORK_

#if __has_include(<CNNetwork/CNNetwork.h>)

FOUNDATION_EXPORT double CNNetworkVersionNumber;
FOUNDATION_EXPORT const unsigned char CNNetworkVersionString[];

#import <CNNetwork/CNRequest.h>
#import <CNNetwork/CNBaseRequest.h>
#import <CNNetwork/CNNetworkAgent.h>
#import <CNNetwork/CNBatchRequest.h>
#import <CNNetwork/CNBatchRequestAgent.h>
#import <CNNetwork/CNChainRequest.h>
#import <CNNetwork/CNChainRequestAgent.h>
#import <CNNetwork/CNNetworkConfig.h>

#else

#import "CNRequest.h"
#import "CNBaseRequest.h"
#import "CNNetworkAgent.h"
#import "CNBatchRequest.h"
#import "CNBatchRequestAgent.h"
#import "CNChainRequest.h"
#import "CNChainRequestAgent.h"
#import "CNNetworkConfig.h"

#endif /* __has_include */

#endif /* _CNNETWORK_ */

