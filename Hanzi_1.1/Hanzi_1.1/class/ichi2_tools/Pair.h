//
//  Pair.h
//  Hanzi_1.1
//
//  Created by zhao on 16/5/17.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pair : NSObject

/**<#注释#>*/
@property (nonatomic, assign) NSInteger first;

/**<#注释#>*/
@property (nonatomic, strong) NSMutableArray *second;

- (instancetype)initWithfirst:(NSInteger)first second:(NSMutableArray *)second;

@end
