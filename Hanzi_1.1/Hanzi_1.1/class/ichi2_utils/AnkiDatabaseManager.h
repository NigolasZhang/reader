#import <Foundation/Foundation.h>


@interface AnkiDatabaseManager : NSObject

//public class AnkiDatabaseManager {
//这是内部类或接口的声明开始




//    private static HashMap<String, AnkiDb> sAnkiDatabases = new HashMap<String, AnkiDb>();
/**方法注释这个方法有泛型，注意啦！*///懒加载的属性
@property (strong, nonatomic) NSMutableDictionary *sAnkiDatabases;

//    private AnkiDatabaseManager() {
/**构造方法注释*/
- (instancetype)init;

//    public static AnkiDb getDatabase(String pathDB) {
/**方法注释*/
+ (NSObject *)getDatabaseWithpathDB:(NSString *)pathDB;

//    public static void closeDatabase(String pathDB) {
/**方法注释*/
+ (void)closeDatabaseWithpathDB:(NSString *)pathDB;

//    public static void closeAllDatabases() {
/**方法注释*/
+ (void)closeAllDatabases;

//    public static boolean isDatabaseOpen(String pathDB) {
/**方法注释*/
+ (BOOL)isDatabaseOpenWithpathDB:(NSString *)pathDB;

@end