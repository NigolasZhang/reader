//
//  CardStats.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class Card;

@interface CardStats : NSObject

//    public static String report(Context context, Card c, Collection col) {
/**方法注释*/ //Context在iOS中是啥呢？========
+ (NSString *)reportWithcontext:(NSObject *)context c:(Card *)c col:(XCollection *)col;

@end
