//
//  NSString+hanzi.m
//  Hanzi_1.1
//
//  Created by zhao on 16/5/17.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import "NSString+hanzi.h"

@implementation NSString (hanzi)

- (BOOL)isEqualToStringIgnoreCase:(NSString *)aString
{
    NSString *s1 = [self lowercaseString];
    NSString *s2 = [aString lowercaseString];
    return [s1 isEqualToString:s2];
}


- (NSString *)trim
{
    NSInteger start = 0;
    NSInteger last = self.length - 1;
    NSInteger end = last;
    
    while ((start <= end) && ([self characterAtIndex:start] <= ' ')) {
        start++;
    }
    
    while ((end >= start) && ([self characterAtIndex:end])) {
        end--;
    }
    
    NSRange range = NSMakeRange(start, end - start +1);
    
    return [self substringWithRange:range];
    
 }


@end
