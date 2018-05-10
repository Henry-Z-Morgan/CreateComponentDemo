//
//  CNChainRequestAgent.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "CNChainRequestAgent.h"
#import "CNChainRequest.h"

@interface CNChainRequestAgent()

@property (strong, nonatomic) NSMutableArray<CNChainRequest *> *requestArray;

@end

@implementation CNChainRequestAgent

+ (CNChainRequestAgent *)sharedAgent {
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

- (void)addChainRequest:(CNChainRequest *)request {
    @synchronized(self) {
        [_requestArray addObject:request];
    }
}

- (void)removeChainRequest:(CNChainRequest *)request {
    @synchronized(self) {
        [_requestArray removeObject:request];
    }
}

@end
