//
//  AnkiDb.m
//  hanzi_v0.1
//
//  Created by God on 16/5/15.
//  Copyright © 2016年 God. All rights reserved.
//

#import "AnkiDb.h"

@implementation AnkiDb


//
//    /**
//     * The deck, which is actually an SQLite database.
//     */
//    private SQLiteDatabase mDatabase;
//    private boolean mMod = false;
//
//
//    /**
//     * Open a database connection to an ".anki" SQLite file.
//     */
//    @TargetApi(Build.VERSION_CODES.HONEYCOMB)
//    public AnkiDb(String ankiFilename) {
- (instancetype)initWithankiFilename:(NSString *)ankiFilename
{
    //        // Since API 11 we can provide a custom error handler which doesn't delete the database on corruption
    //        if (CompatHelper.isHoneycomb()) {
    //            mDatabase = SQLiteDatabase.openDatabase(ankiFilename, null,
    //                    (SQLiteDatabase.OPEN_READWRITE + SQLiteDatabase.CREATE_IF_NECESSARY)
    //                            | SQLiteDatabase.NO_LOCALIZED_COLLATORS, new MyDbErrorHandler());
    //        } else {
    //            mDatabase = SQLiteDatabase.openDatabase(ankiFilename, null,
    //                    (SQLiteDatabase.OPEN_READWRITE + SQLiteDatabase.CREATE_IF_NECESSARY)
    //                            | SQLiteDatabase.NO_LOCALIZED_COLLATORS);
    //        }
    //
    //        if (mDatabase != null) {
    //            // TODO: we can remove this eventually once everyone has stopped using old AnkiDroid clients with WAL
    //            CompatHelper.getCompat().disableDatabaseWriteAheadLogging(mDatabase);
    //            mDatabase.rawQuery("PRAGMA synchronous = 2", null);
    //        }
    //        // getDatabase().beginTransactionNonExclusive();
    //        mMod = false;
    if (self = [super init]) {
        NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString *filename = [doc stringByAppendingPathComponent:@"collection.anki2"];
        // 1.得到数据库
        _mDatabase = [FMDatabase databaseWithPath:filename];
        // 2.对数据库执行一个初始操作，具体待研究；
        NSString * sql = [NSString stringWithFormat:@"PRAGMA synchronous = 2"];
        [_mDatabase executeQuery:sql];
        _mMod = FALSE;
        
    }
    return self;
    
}
//
//    @TargetApi(Build.VERSION_CODES.HONEYCOMB)
//    public class MyDbErrorHandler implements DatabaseErrorHandler {
//        @Override
//        public void onCorruption(SQLiteDatabase db) {
- (void)onCorruptionWithdb:(NSObject *)db
{
    //            Timber.e("The database has been corrupted...");
    //            AnkiDroidApp.sendExceptionReport(new RuntimeException("Database corrupted"), "AnkiDb.MyDbErrorHandler.onCorruption", "Db has been corrupted ");
    //            CollectionHelper.getInstance().closeCollection(false);
    //            DatabaseErrorDialog.databaseCorruptFlag = true;
    
    
}
//
//
//    /**
//     * Closes a previously opened database connection.
//     */
//    public void closeDatabase() {
- (void)closeDatabase
{
    //        if (mDatabase != null) {
    //            mDatabase.close();
    //            Timber.d("closeDatabase, database %s closed = %s", mDatabase.getPath(), !mDatabase.isOpen());
    //            mDatabase = null;
    //        }
    
    if (!self.mDatabase) {
        [self.mDatabase close];
#warning 下边看不懂
    }
}
//
//
//    public void commit() {
- (void)commit
{
    //        // SQLiteDatabase db = getDatabase();
    //        // while (db.inTransaction()) {
    //        // db.setTransactionSuccessful();
    //        // db.endTransaction();
    //        // }
    //        // db.beginTransactionNonExclusive();
    
    
}
//
//
//    public SQLiteDatabase getDatabase() {
- (FMDatabase *)getDatabase
{
    //        return mDatabase;
    return self.mDatabase;
    
}
//
//
//    public void setMod(boolean mod) {
- (void)setModWithmod:(BOOL)mod
{
    //        mMod = mod;
    
    _mMod = mod;
}
//
//
//    public boolean getMod() {
- (BOOL)getMod
{
    //        return mMod;
    
    return self.mMod;
    
}
//
//
//    /**
//     * Convenience method for querying the database for a single integer result.
//     *
//     * @param query The raw SQL query to use.
//     * @return The integer result of the query.
//     */
//    public int queryScalar(String query) {
- (NSInteger)queryScalarWithquery:(NSString *)query
{
    //        Cursor cursor = null;
    //        int scalar;
    //        try {
    //            cursor = mDatabase.rawQuery(query, null);
    //            if (!cursor.moveToNext()) {
    //                return 0;
    //            }
    //            scalar = cursor.getInt(0);
    //        } finally {
    //            if (cursor != null) {
    //                cursor.close();
    //            }
    //        }
    //        return scalar;
    
#warning 不知道怎办
    return nil;
    
}
//
//
//    public String queryString(String query) throws SQLException {
- (NSString *)queryStringWithquery:(NSString *)query
{
    //        Cursor cursor = null;
    //        try {
    //            cursor = mDatabase.rawQuery(query, null);
    //            if (!cursor.moveToNext()) {
    //                throw new SQLException("No result for query: " + query);
    //            }
    //            return cursor.getString(0);
    //        } finally {
    //            if (cursor != null) {
    //                cursor.close();
    //            }
    //        }
    
    return nil;
    
}
//
//
//    public long queryLongScalar(String query) {
- (NSInteger)queryLongScalarWithquery:(NSString *)query
{
    //        Cursor cursor = null;
    //        long scalar;
    //        try {
    //            cursor = mDatabase.rawQuery(query, null);
    //            if (!cursor.moveToNext()) {
    //                return 0;
    //            }
    //            scalar = cursor.getLong(0);
    //        } finally {
    //            if (cursor != null) {
    //                cursor.close();
    //            }
    //        }
    //
    //        return scalar;
    
    return nil;
    
}
//
//
//    /**
//     * Convenience method for querying the database for an entire column. The column will be returned as an ArrayList of
//     * the specified class. See Deck.initUndo() for a usage example.
//     *
//     * @param type The class of the column's data type. Example: int.class, String.class.
//     * @param query The SQL query statement.
//     * @param column The column id in the result set to return.
//     * @return An ArrayList with the contents of the specified column.
//     */
//    public <T> ArrayList<T> queryColumn(Class<T> type, String query, int column) {
- (NSMutableArray *)queryColumnWithtype:(NSObject *)type query:(NSString *)query column:(NSInteger)column
{
    //        int nullExceptionCount = 0;
    //        InvocationTargetException nullException = null; // to catch the null exception for reporting
    //        ArrayList<T> results = new ArrayList<T>();
    //        Cursor cursor = null;
    //
    //        try {
    //            cursor = mDatabase.rawQuery(query, null);
    //            String methodName = getCursorMethodName(type.getSimpleName());
    //            while (cursor.moveToNext()) {
    //                try {
    //                    // The magical line. Almost as illegible as python code ;)
    //                    results.add(type.cast(Cursor.class.getMethod(methodName, int.class).invoke(cursor, column)));
    //                } catch (InvocationTargetException e) {
    //                    if (cursor.isNull(column)) { // null value encountered
    //                        nullExceptionCount++;
    //                        if (nullExceptionCount == 1) { // Toast and error report first time only
    //                            nullException = e;
    //                            Toast.makeText(AnkiDroidApp.getInstance().getBaseContext(),
    //                                    "Error report pending: unexpected null in database.", Toast.LENGTH_LONG).show();
    //                        }
    //                        continue; // attempt to skip this null record
    //                    } else {
    //                        throw new RuntimeException(e);
    //                    }
    //                }
    
    return nil;
    
}
//
//
//    /**
//     * Mapping of Java type names to the corresponding Cursor.get method.
//     *
//     * @param typeName The simple name of the type's class. Example: String.class.getSimpleName().
//     * @return The name of the Cursor method to be called.
//     */
//    private static String getCursorMethodName(String typeName) {
+ (NSString *)getCursorMethodNameWithtypeName:(NSString *)typeName
{
            if ([typeName isEqualToString:@"String"]) {
                return @"getString";
            } else if ([typeName isEqualToString:@"Long"]) {
                return @"getLong";
            } else if ([typeName isEqualToString:@"Integer"]) {
                return @"getInt";
            } else if ([typeName isEqualToString:@"Float"]) {
                return @"getFloat";
            } else if ([typeName isEqualToString:@"Double"]) {
                return @"getDouble";
            } else {
                return nil;
            }
    
    
    
}
//
//
//    public void execute(String sql) {
- (void)executeWithsql:(NSString *)sql
{
    //        execute(sql, null);
    
    [self executeWithsql:sql object:nil];
}
//
//
//    public void execute(String sql, Object[] object) {
- (void)executeWithsql:(NSString *)sql object:(NSMutableArray *)object
{
    //        String s = sql.trim().toLowerCase(Locale.US);
    //        // mark modified?
    //        for (String mo : MOD_SQLS) {
    //            if (s.startsWith(mo)) {
    //                mMod = true;
    //                break;
    //            }
    //        }
    //        if (object == null) {
    //            this.getDatabase().execSQL(sql);
    //        } else {
    //            this.getDatabase().execSQL(sql, object);
    //        }
    
    
}
//
//
//    /**
//     * WARNING: This is a convenience method that splits SQL scripts into separate queries with semicolons (;)
//     * as the delimiter. Only use this method on internal functions where we can guarantee that the script does
//     * not contain any non-statement-terminating semicolons.
//     */
//    public void executeScript(String sql) {
- (void)executeScriptWithsql:(NSString *)sql
{
    //        mMod = true;
    //        String[] queries = sql.split(";");
    //        for(String query : queries) {
    //            mDatabase.execSQL(query);
    //        }
    
    self.mMod = YES;
    NSArray *queries ;
#warning sql.split(";") 该怎么写
    for (NSString *query in queries) {
#warning mDatabase.execSQL(query); 该怎么写
    }
}
//
//
//    /** update must always be called via AnkiDb in order to mark the db as changed */
//    public int update(String table, ContentValues values) {
- (NSInteger)updateWithtable:(NSString *)table values:(NSObject *)values
{
    //        return update(table, values, null, null);
    
    return [self updateWithtable:table values:values whereClause:nil whereArgs:nil];
    
}
//
//
//    /** update must always be called via AnkiDb in order to mark the db as changed */
//    public int update(String table, ContentValues values, String whereClause, String[] whereArgs) {
- (NSInteger)updateWithtable:(NSString *)table values:(NSObject *)values whereClause:(NSString *)whereClause whereArgs:(NSMutableArray *)whereArgs
{
    //        mMod = true;
    //        return getDatabase().update(table, values, whereClause, whereArgs);
    self.mMod = YES;
    
#warning 怎么写
    return nil;
}
//
//
//    /** insert must always be called via AnkiDb in order to mark the db as changed */
//    public long insert(String table, String nullColumnHack, ContentValues values) {
- (NSInteger)insertWithtable:(NSString *)table nullColumnHack:(NSString *)nullColumnHack values:(NSObject *)values
{
    //        mMod = true;
    //        return getDatabase().insert(table, nullColumnHack, values);
    
    return nil;
    
}
//
//
//    public void executeMany(String sql, List<Object[]> list) {
- (void)executeManyWithsql:(NSString *)sql list:(NSMutableArray *)list
{
    //        mMod = true;
    //        mDatabase.beginTransaction();
    //        try {
    //            for (Object[] o : list) {
    //                mDatabase.execSQL(sql, o);
    //            }
    //            mDatabase.setTransactionSuccessful();
    //        } finally {
    //            mDatabase.endTransaction();
    //        }
    self.mMod = YES;
#warning 怎么写
    
}
//
//    /**
//     * @return The full path to this database file.
//     */
//    public String getPath() {
- (NSString *)getPath
{
    //        return mDatabase.getPath();
    
    return nil;
    
}


@end

