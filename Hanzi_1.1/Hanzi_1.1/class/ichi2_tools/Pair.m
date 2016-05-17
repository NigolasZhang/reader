
//
//  Pair.m
//  Hanzi_1.1
//
//  Created by zhao on 16/5/17.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import "Pair.h"

@implementation Pair

- (instancetype)initWithfirst:(NSObject *)first second:(NSObject *)second
{
    if (self = [super init]) {
        _first = first;
        _second = second;
    }
    return self;
}


@end
