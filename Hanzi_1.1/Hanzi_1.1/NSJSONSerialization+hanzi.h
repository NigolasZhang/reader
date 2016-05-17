//
//  NSJSONSerialization+hanzi.h
//  Hanzi_1.1
//
//  Created by God on 16/5/16.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (hanzi)

+(instancetype)JSONObjectWithString:(NSString *)string options:(NSJSONReadingOptions)opt error:(NSError **)error;


@end
