//
//  NSString+hanzi.h
//  Hanzi_1.1
//
//  Created by zhao on 16/5/17.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (hanzi)

- (BOOL)isEqualToStringIgnoreCase:(NSString *)aString;

- (NSString *)trim;

@end
