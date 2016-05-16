//
//  Storage.h
//  volNotes01
//
//  Created by A on 16/5/6.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class AnkiDb;

@interface Storage : NSObject




//    public static Collection Collection(String path) {
/**方法注释*/
+ (XCollection *)CollectionWithpath:(NSString *)path;

//    public static Collection Collection(String path, boolean server, boolean log) {
/**方法注释*/
+ (XCollection *)CollectionWithpath:(NSString *)path server:(BOOL)server log:(BOOL)log;

//    private static int _upgradeSchema(AnkiDb db) {
/**方法注释*/
+ (NSInteger)_upgradeSchemaWithdb:(AnkiDb *)db;

//    private static void _upgrade(Collection col, int ver) {
/**方法注释*/
+ (void)_upgradeWithcol:(XCollection *)col ver:(NSInteger)ver;

//    private static void _upgradeClozeModel(Collection col, JSONObject m) throws ConfirmModSchemaException {
/**方法注释*/
+ (void)_upgradeClozeModelWithcol:(XCollection *)col m:(NSMutableDictionary *)m;

//    private static int _createDB(AnkiDb db) {
/**方法注释*/
+ (NSInteger)_createDBWithdb:(AnkiDb *)db;

//    private static void _addSchema(AnkiDb db) {
/**方法注释*/
+ (void)_addSchemaWithdb:(AnkiDb *)db;

//    private static void _addSchema(AnkiDb db, boolean setColConf) {
/**方法注释*/
+ (void)_addSchemaWithdb:(AnkiDb *)db setColConf:(BOOL)setColConf;

//    private static void _setColVars(AnkiDb db) {
/**方法注释*/
+ (void)_setColVarsWithdb:(AnkiDb *)db;

//    private static void _updateIndices(AnkiDb db) {
/**方法注释*/
+ (void)_updateIndicesWithdb:(AnkiDb *)db;

//    public static void addIndices(AnkiDb db) {
/**方法注释*/
+ (void)addIndicesWithdb:(AnkiDb *)db;



//    public static boolean check(String path) {
/**方法注释*/
+ (BOOL)checkWithpath:(NSString *)path;




@end
