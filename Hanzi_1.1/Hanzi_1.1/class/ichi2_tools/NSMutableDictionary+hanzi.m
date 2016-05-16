//
//  NSMutableDictionary+hanzi.m
//  ocHanzi
//
//  Created by God on 16/5/13.
//  Copyright © 2016年 God. All rights reserved.
//

#import "NSMutableDictionary+hanzi.h"

@implementation NSMutableDictionary (hanzi)


- (NSObject *)setOrGetObject:(NSObject *)anObject forKey:(NSString *)aKey{
    
    if([self objectForKey:aKey])
    {
        return [self objectForKey:aKey];
    }else{
        [self setObject:anObject forKey:aKey];
    }
    return anObject;
}


@end
