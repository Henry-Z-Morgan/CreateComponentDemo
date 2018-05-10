//
//  CNBatchRequestAgent.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "CNBatchRequestAgent.h"
#import "CNBatchRequest.h"

@interface CNBatchRequestAgent()

@property (strong, nonatomic) NSMutableArray<CNBatchRequest *> *requestArray;

@end

@implementation CNBatchRequestAgent

+ (CNBatchRequestAgent *)sharedAgent {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _requestArray = [NSMutableArray array];
    }
    return self;
}

- (void)addBatchRequest:(CNBatchRequest *)request {
    @synchronized(self) {
        [_requestArray addObject:request];
    }
}

- (void)removeBatchRequest:(CNBatchRequest *)request {
    @synchronized(self) {
        [_requestArray removeObject:request];
    }
}

@end
