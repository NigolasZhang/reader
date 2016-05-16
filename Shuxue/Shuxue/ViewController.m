//
//  ViewController.m
//  Shuxue
//
//  Created by zhao on 16/5/16.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    //        // mToday是自从这个集合被创建哪天算起，截至到今天，已过去几个整天了，
    //        mToday = (int) ((Utils.now() - mCol.getCrt()) / 86400); // 86400=60*60*24, one day;
   // _mToday = (NSInteger)(([Utils now] - [self.mCol getCrt]) / 86400);
//    (System.currentTimeMillis() / 1000.0)--->1431814401699 这是
    
    
    NSNumber a = [NSNumber ]@1431814401699;
    NSNumber b = @1431834401699;
    NSNumber c = (b - a) / 86400;
    
    NSLog(@"tianshu = day--%@", c);
    
   


}


@end
