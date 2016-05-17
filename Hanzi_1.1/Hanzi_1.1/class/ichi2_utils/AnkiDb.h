//
//  AnkiDb.h
//  hanzi_v0.1
//
//  Created by God on 16/5/15.
//  Copyright © 2016年 God. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"
@interface AnkiDb : NSObject


//public class AnkiDb {
//这是内部类或接口的声明开始

//    private static final String[] MOD_SQLS = new String[] { "insert", "update", "delete" };
/**常量注释*/
//static NSMutableArray * const MOD_SQLS = new String[] { "insert", "update", "delete" };

//    private SQLiteDataFbase mDatabase;
/**注释*/
@property (nonatomic, strong) FMDatabase *mDatabase;

//    private boolean mMod = false;
/**注释*/
@property (nonatomic, assign) BOOL mMod;

//    public AnkiDb(String ankiFilename) {
/**构造方法注释*/
- (instancetype)initWithankiFilename:(NSString *)ankiFilename;

//    public class MyDbErrorHandler implements DatabaseErrorHandler {
//这是内部类或接口的声明开始

//        public void onCorruption(SQLiteDatabase db) {
/**方法注释*/
- (void)onCorruptionWithdb:(NSObject *)db;

//    public void closeDatabase() {
/**方法注释*/
- (void)closeDatabase;

//    public void commit() {
/**方法注释*/
- (void)commit;

//    public SQLiteDatabase getDatabase() {
/**方法注释*/
- (FMDatabase *)getDatabase;

//    public void setMod(boolean mod) {
/**方法注释*/
- (void)setModWithmod:(BOOL)mod;

//    public boolean getMod() {
/**方法注释*/
- (BOOL)getMod;

//    public int queryScalar(String query) {
/**方法注释*/
- (NSInteger)queryScalarWithquery:(NSString *)query;

//    public String queryString(String query) throws SQLException {
/**方法注释*/
- (NSString *)queryStringWithquery:(NSString *)query;

//    public long queryLongScalar(String query) {
/**方法注释*/
- (NSInteger)queryLongScalarWithquery:(NSString *)query;

//    public <T> ArrayList<T> queryColumn(Class<T> type, String query, int column) {
/**方法注释这个方法有<T>注意啦*/
- (NSMutableArray *)queryColumnWithtype:(NSString *)type query:(NSString *)query column:(NSInteger)column;

//    private static String getCursorMethodName(String typeName) {
/**方法注释*/
+ (NSString *)getCursorMethodNameWithtypeName:(NSString *)typeName;

//    public void execute(String sql) {
/**方法注释*/
- (void)executeWithsql:(NSString *)sql;

//    public void execute(String sql, Object[] object) {
/**方法注释*/
- (void)executeWithsql:(NSString *)sql object:(NSMutableArray *)object;

//    public void executeScript(String sql) {
/**方法注释*/
- (void)executeScriptWithsql:(NSString *)sql;

//    public int update(String table, ContentValues values) {
/**方法注释*/
- (NSInteger)updateWithtable:(NSString *)table values:(NSObject *)values;

//    public int update(String table, ContentValues values, String whereClause, String[] whereArgs) {
/**方法注释*/
- (NSInteger)updateWithtable:(NSString *)table values:(NSObject *)values whereClause:(NSString *)whereClause whereArgs:(NSMutableArray *)whereArgs;

//    public long insert(String table, String nullColumnHack, ContentValues values) {
/**方法注释*/
- (NSInteger)insertWithtable:(NSString *)table nullColumnHack:(NSString *)nullColumnHack values:(NSObject *)values;

//    public void executeMany(String sql, List<Object[]> list) {
/**方法注释这个方法有泛型，注意啦！*/
- (void)executeManyWithsql:(NSString *)sql list:(NSMutableArray *)list;

//    public String getPath() {
/**方法注释*/
- (NSString *)getPath;

@end