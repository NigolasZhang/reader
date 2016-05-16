//
//  NSJSONSerialization+hanzi.m
//  Hanzi_1.1
//
//  Created by God on 16/5/16.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import "NSJSONSerialization+hanzi.h"

@implementation NSJSONSerialization (hanzi)

+(instancetype)JSONObjectWithString:(NSString *)string options:(NSJSONReadingOptions)opt error:(NSError **)error
{
   
    NSData *jsonData = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    
    return [NSJSONSerialization JSONObjectWithData:jsonData
                                             options:opt
                                               error:error];
    
}


@end
