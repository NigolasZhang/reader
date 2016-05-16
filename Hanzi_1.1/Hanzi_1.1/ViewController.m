//
//  ViewController.m
//  Hanzi_1.1
//
//  Created by zhao on 16/5/16.
//  Copyright © 2016年 com.chaojiyiji. All rights reserved.
//

#import "ViewController.h"
#import "fmdb/FMDB.h"
#import "NSJSONSerialization+hanzi.h"

@interface ViewController ()

@property (nonatomic,strong) FMDatabase *db;

@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) UIButton *queryButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [self zhuanyishujuku];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor redColor];
    self.button.frame = CGRectMake(100, 200, 100, 50);
    [self.button addTarget:self action:@selector(addButton) forControlEvents:UIControlEventTouchUpInside];
    [self.button setTitle:@"打开数据库" forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    
    self.queryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.queryButton.backgroundColor = [UIColor redColor];
    self.queryButton.frame = CGRectMake(100, 300, 100, 50);
    [self.queryButton addTarget:self action:@selector(qyerybutton) forControlEvents:UIControlEventTouchUpInside];
    [self.queryButton setTitle:@"查询数据" forState:UIControlStateNormal];
    [self.view addSubview:self.queryButton];
}

-(void)zhuanyishujuku {
    
    
    //文件类型
    NSString * docPath = [[NSBundle mainBundle] pathForResource:@"c09" ofType:@"db"];
    
    // 创建文件夹
    NSString *createDir = [NSHomeDirectory() stringByAppendingString:@"/Documents"];
    [self createFolder:createDir];
    
    NSLog(@"%@",createDir);
    // 把文件拷贝到Test目录
    BOOL filesPresent1 = [self copyMissingFile:docPath toPath:createDir];
    
    if (filesPresent1) {
        NSLog(@"OK");
    }
    else
    {
        NSLog(@"NO");
    }
    
    
}



/**
 * @brief 把Resource文件夹下的save1.dat拷贝到沙盒
 *
 * @param sourcePath Resource文件路径
 * @param toPath 把文件拷贝到XXX文件夹
 *
 * @return BOOL
 */
- (BOOL)copyMissingFile:(NSString *)sourcePath toPath:(NSString *)toPath
{
    BOOL retVal = YES; // If the file already exists, we'll return success…
    NSString *newName = @"collection.anki2";
    NSString * finalLocation = [toPath stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",newName]];
    NSLog(@"*************%@",finalLocation);
    NSLog(@"++++%@",sourcePath);
    if (![[NSFileManager defaultManager] fileExistsAtPath:finalLocation])
    {
        retVal = [[NSFileManager defaultManager]moveItemAtPath:sourcePath toPath:finalLocation error:NULL];
        NSLog(@"----%i",retVal);
    }
    return retVal;
  
}

/**
 * @brief 创建文件夹
 *
 * @param createDir 创建文件夹路径
 */
- (void)createFolder:(NSString *)createDir
{
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:createDir isDirectory:&isDir];
    if ( !(isDir == YES && existed == YES) )
    {
        [fileManager createDirectoryAtPath:createDir withIntermediateDirectories:YES attributes:nil error:nil];
    }
}



/**
 *  打开数据库
 */
-(void)addButton {
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filename = [doc stringByAppendingPathComponent:@"collection.anki2"];
    //    NSString *filename = @"/Users/god/Library/Developer/CoreSimulator/Devices/C5212DB3-1786-4B58-A02F-3FF15CCEC77C/data/Containers/Data/Application/8586F593-1517-49AE-8B2B-E8D569DA6C83/Documents/c09.db";
    NSLog(@"filename:%@",filename);
    // 2.得到数据库
    FMDatabase *db = [FMDatabase databaseWithPath:filename];
    
    NSLog(@"++++++++%@",db);
    //    [db open];
    self.db=db;
}


//查询
- (void)qyerybutton
{
    if ([self.db open]) {
        NSString * sql = [NSString stringWithFormat:
                          @"SELECT * FROM %@",@"col"];
        FMResultSet * rs = [self.db executeQuery:sql];
        while ([rs next]) {
            NSInteger Id = [rs longForColumn:@"id"];
            NSString *conf = [rs stringForColumn:@"conf"];
            NSError *err;
           
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithString:conf options:kNilOptions error:&err];
            if(err) {
                NSLog(@"json解析失败：%@",err);
                
            }
            NSLog(@"id = %ld", (long)Id);
            NSLog(@"conf = %@",conf);
            NSLog(@"%@",dic);
        }
        [self.db close];
    }
    
}


@end
