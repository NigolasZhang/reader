//
//  Utils.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Context;
@class XCollection;
@class AnkiDb;



@interface Utils : NSObject




//    public static final Locale ENGLISH_LOCALE = new Locale("en_US");
/**常量注释*/
//static Locale * const ENGLISH_LOCALE = new Locale("en_US");

//    public static final int CHUNK_SIZE = 32768;
/**常量注释*/
//static NSInteger const CHUNK_SIZE = 32768;

//    private static final int DAYS_BEFORE_1970 = 719163;
/**常量注释*/
//static NSInteger const DAYS_BEFORE_1970 = 719163;

//    private static NumberFormat mCurrentNumberFormat;
/**注释*/
//@property (nonatomic, strong) NumberFormat *mCurrentNumberFormat;

//    private static NumberFormat mCurrentPercentageFormat;
/**注释*/
//@property (nonatomic, strong) NumberFormat *mCurrentPercentageFormat;

//    private static TreeSet<Long> sIdTree;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, assign) NSMutableArray *sIdTree;

//    private static long sIdTime;
/**注释*/
@property (nonatomic, assign) NSInteger sIdTime;











//    private static final String[] FONT_FILE_EXTENSIONS = new String[] {".ttf",".ttc",".otf"};
/**常量注释*/
//static NSMutableArray * const FONT_FILE_EXTENSIONS = new String[] {".ttf",".ttc",".otf"};

//    private Utils() { }
/**构造方法注释*/
- (instancetype)init;









//    private static final Pattern htmlEntitiesPattern = Pattern.compile("&#?\\w+;");
/**常量注释*///正则表达式
//static Pattern * const htmlEntitiesPattern = Pattern.compile("&#?\\w+;");

//    private static final String ALL_CHARACTERS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
/**常量注释*/
//static NSString * const ALL_CHARACTERS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";



//    public static final int FILE_COPY_BUFFER_SIZE = 2048;
/**常量注释*/
//static NSInteger const FILE_COPY_BUFFER_SIZE = 2048;

//    public static double now() {
/**方法注释*/
+ (NSNumber *)now;

//    public static long intNow() {
/**方法注释*/
+ (NSInteger)intNow;

//    public static long intNow(int scale) {
/**方法注释*/
+ (NSInteger)intNowWithscale:(NSInteger)scale;

//    public static String timeQuantity(Context context, int time_s) {
/**方法注释*/
+ (NSString *)timeQuantityWithcontext:(Context *)context time_s:(NSInteger)time_s;

//    public static String timeSpan(Context context, int time_s) {
/**方法注释*/
+ (NSString *)timeSpanWithcontext:(Context *)context time_s:(NSInteger)time_s;

//    public static String fmtPercentage(Double value) {
/**方法注释*/
+ (NSString *)fmtPercentageWithvalue:(NSNumber *)value;

//    public static String fmtPercentage(Double value, int point) {
/**方法注释*/
+ (NSString *)fmtPercentageWithvalue:(NSNumber *)value point:(NSInteger)point;

//    public static String stripHTML(String s) {
/**方法注释*/
+ (NSString *)stripHTMLWiths:(NSString *)s;

//    public static String stripHTMLMedia(String s) {
/**方法注释*/
+ (NSString *)stripHTMLMediaWiths:(NSString *)s;

//    private String minimizeHTML(String s) {
/**方法注释*/
- (NSString *)minimizeHTMLWiths:(NSString *)s;

//    private static String entsToTxt(String html) {
/**方法注释*/
+ (NSString *)entsToTxtWithhtml:(NSString *)html;

//    public static String hexifyID(long id) {
/**方法注释*/
+ (NSString *)hexifyIDWithxid:(NSInteger)xid;

//    public static long dehexifyID(String id) {
/**方法注释*/
+ (NSInteger)dehexifyIDWithxid:(NSString *)xid;

//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
+ (NSString *)ids2strWithids:(NSMutableArray *)ids;

//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
//+ (NSString *)ids2strWithids:(NSMutableArray *)ids;

//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
//+ (NSString *)ids2strWithids:(NSMutableArray *)ids;


//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
//+ (NSString *)ids2strWithids:(NSMutableArray *)ids;


//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
//+ (NSString *)ids2strWithids:(NSMutableArray *)ids;




//    public static long[] arrayList2array(List<Long> list) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)arrayList2arrayWithlist:(NSMutableArray *)list;

//    public static Long[] list2ObjectArray(List<Long> list) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)list2ObjectArrayWithlist:(NSMutableArray *)list;

//    public static long timestampID(AnkiDb db, String table) {
/**方法注释*/
+ (NSInteger)timestampIDWithdb:(AnkiDb *)db table:(NSString *)table;

//    public static long maxID(AnkiDb db) {
/**方法注释*/
+ (NSInteger)maxIDWithdb:(AnkiDb *)db;

//    public static String base62(int num, String extra) {
//请谨慎，这个不完整/**常量注释*/
+ (NSString *)base62Withnum:(NSInteger)num extra:(NSString *)extra;

//    public static String base91(int num) {
//请谨慎，这个不完整/**常量注释*/
+ (NSString *)base91Withnum:(NSInteger)num;

//    public static String guid64() {
//请谨慎，这个不完整/**常量注释*/
+ (NSString *)guid64;

//    public static String incGuid(String guid) {
/**方法注释*/
+ (NSString *)incGuidWithguid:(NSString *)guid;

//    private static String _incGuid(String guid) {
/**方法注释*/
+ (NSString *)_incGuidWithguid:(NSString *)guid;





//    public static long[] jsonArrayToLongArray(JSONArray jsonArray) throws JSONException {
/**方法注释*/
+ (NSMutableArray *)jsonArrayToLongArrayWithjsonArray:(NSMutableArray *)jsonArray;

//    public static String joinFields(String[] list) {
/**方法注释*/
+ (NSString *)joinFieldsWithlist:(NSMutableArray *)list;

//    public static String[] splitFields(String fields) {
/**方法注释*/
+ (NSMutableArray *)splitFieldsWithfields:(NSString *)fields;

//    public static String checksum(String data) {
/**方法注释*/
+ (NSString *)checksumWithdata:(NSString *)data;

//    public static long fieldChecksum(String data) {
/**方法注释*/
+ (NSInteger)fieldChecksumWithdata:(NSString *)data;

//    public static String fileChecksum(String file) {
/**方法注释*/
+ (NSString *)fileChecksumWithfile:(NSString *)file;

//    public static String fileChecksum(File file) {
/**方法注释*/
//+ (NSString *)fileChecksumWithfile:(NSObject *)file;

//    public static String replaceLineBreak(String text) {
/**方法注释*/
+ (NSString *)replaceLineBreakWithtext:(NSString *)text;



//    public static String convertStreamToString(InputStream is) {
/**方法注释*/
+ (NSString *)convertStreamToStringWithis:(NSObject *)is;

//    public static boolean unzipFiles(ZipFile zipFile, String targetDirectory, String[] zipEntries, HashMap<String, String> zipEntryToFilenameMap) {
/**方法注释这个方法有泛型，注意啦！*/
+ (BOOL)unzipFilesWithzipFile:(NSObject *)zipFile targetDirectory:(NSString *)targetDirectory zipEntries:(NSMutableArray *)zipEntries zipEntryToFilenameMap:(NSMutableDictionary *)zipEntryToFilenameMap;

//    public static byte[] compress(byte[] bytesToCompress, int comp) throws IOException {
/**方法注释*/
+ (NSMutableArray *)compressWithbytesToCompress:(NSMutableArray *)bytesToCompress comp:(NSInteger)comp;

//    public static void writeToFile(InputStream source, String destination) throws IOException {
/**方法注释*/
+ (void)writeToFileWithsource:(NSObject *)source destination:(NSString *)destination;

//    public static void printJSONObject(JSONObject jsonObject) {
/**方法注释*/
+ (void)printJSONObjectWithjsonObject:(NSMutableDictionary *)jsonObject;

//    public static void printJSONObject(JSONObject jsonObject, boolean writeToFile) {
/**方法注释*/
+ (void)printJSONObjectWithjsonObject:(NSMutableDictionary *)jsonObject writeToFile:(BOOL)writeToFile;

//    private static void printJSONObject(JSONObject jsonObject, String indentation, BufferedWriter buff) {
/**方法注释*/
+ (void)printJSONObjectWithjsonObject:(NSMutableDictionary *)jsonObject indentation:(NSString *)indentation buff:(NSObject *)buff;

//    public static void saveJSONObject(JSONObject jsonObject) throws IOException {
/**方法注释*/
+ (void)saveJSONObjectWithjsonObject:(NSMutableDictionary *)jsonObject;

//    public static int booleanToInt(boolean b) {
/**方法注释*/
+ (NSInteger)booleanToIntWithb:(BOOL)b;

//    public static Date genToday(double utcOffset) {
/**方法注释*/
//+ (NSObject *)genTodayWithutcOffset:(NSNumber *)utcOffset;

//    public static void printDate(String name, double date) {
/**方法注释*/
+ (void)printDateWithname:(NSString *)name date:(NSNumber *)date;



//    public static boolean isIntentAvailable(Context context, String action) {
/**方法注释*/
+ (BOOL)isIntentAvailableWithcontext:(Context *)context action:(NSString *)action;

//    public static boolean isIntentAvailable(Context context, String action, ComponentName componentName) {
/**方法注释*/
+ (BOOL)isIntentAvailableWithcontext:(Context *)context action:(NSString *)action componentName:(NSObject *)componentName;

//    public static String getBaseUrl(String mediaDir) {
/**方法注释*/
+ (NSString *)getBaseUrlWithmediaDir:(NSString *)mediaDir;

//    public static long[] toPrimitive(Long[] array) {
/**方法注释*/
+ (NSMutableArray *)toPrimitiveWitharray:(NSMutableArray *)array;



//    public static void updateProgressBars(View view, int x, int y) {
/**方法注释*/
+ (void)updateProgressBarsWithview:(NSObject *)view x:(NSInteger)x y:(NSInteger)y;

//    public static double utcOffset() {
/**方法注释*/
+ (NSNumber *)utcOffset;

//    public static String removeExtension(String filename) {
/**方法注释*/
+ (NSString *)removeExtensionWithfilename:(NSString *)filename;

//    public static String getFileExtension(String filename) {
/**方法注释*/
+ (NSString *)getFileExtensionWithfilename:(NSString *)filename;

//    public static String removeInvalidDeckNameCharacters(String name) {
/**方法注释*/
+ (NSString *)removeInvalidDeckNameCharactersWithname:(NSString *)name;

//    public static List<AnkiFont> getCustomFonts(Context context) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)getCustomFontsWithcontext:(Context *)context;

//    public static List<File> getImportableDecks(Context context) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)getImportableDecksWithcontext:(Context *)context;

//                public boolean accept(File pathname) {
/**方法注释*/
+ (BOOL)acceptWithpathname:(NSObject *)pathname;

//    public static String join(String delimiter, String... values) {
/**方法注释*/
+ (NSString *)joinWithdelimiter:(NSString *)delimiter values:(NSObject *)values;

//    public static void copyFile(File sourceFile, File destFile) throws IOException {
/**方法注释*/
+ (void)copyFileWithsourceFile:(NSObject *)sourceFile destFile:(NSObject *)destFile;

//    public static String jsonToString(JSONObject json) {
/**方法注释*/
+ (NSString *)jsonToStringWithjson:(NSMutableDictionary *)json;

//    public static String jsonToString(JSONArray json) {
/**方法注释*/
//+ (NSString *)jsonToStringWithjson:(NSMutableArray *)json;

//    public static String platDesc() {
/**方法注释*/
+ (NSString *)platDesc;




@end
