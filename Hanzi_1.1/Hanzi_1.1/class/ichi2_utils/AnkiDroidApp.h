#import <Foundation/Foundation.h>

@interface AnkiDroidApp : NSObject

//public class AnkiDroidApp extends Application {
//这是内部类或接口的声明开始



//    public static final String FEEDBACK_REPORT_ASK = "2";
/**常量注释*/
//static NSString * const FEEDBACK_REPORT_ASK = "2";

//    public static final String FEEDBACK_REPORT_NEVER = "1";
/**常量注释*/
//static NSString * const FEEDBACK_REPORT_NEVER = "1";

//    public static final String FEEDBACK_REPORT_ALWAYS = "0";
/**常量注释*/
//static NSString * const FEEDBACK_REPORT_ALWAYS = "0";

//    public static final String TAG = "AnkiDroid";
/**常量注释*/
//static NSString * const TAG = "AnkiDroid";

//    private static AnkiDroidApp sInstance;
/**注释*/
@property (nonatomic, strong) NSObject *sInstance;

//    public static int sSwipeMinDistance = -1;
/**注释*/
@property (nonatomic, assign) NSInteger sSwipeMinDistance;

//    public static int sSwipeThresholdVelocity = -1;
/**注释*/
@property (nonatomic, assign) NSInteger sSwipeThresholdVelocity;

//    private static int DEFAULT_SWIPE_MIN_DISTANCE;
/**注释*/
@property (nonatomic, assign) NSInteger DEFAULT_SWIPE_MIN_DISTANCE;

//    private static int DEFAULT_SWIPE_THRESHOLD_VELOCITY;
/**注释*/
@property (nonatomic, assign) NSInteger DEFAULT_SWIPE_THRESHOLD_VELOCITY;

//    public static final int CHECK_DB_AT_VERSION = 40;
/**常量注释*/
//static NSInteger const CHECK_DB_AT_VERSION = 40;

//    public static final int CHECK_PREFERENCES_AT_VERSION = 20500225;
/**常量注释*/
//static NSInteger const CHECK_PREFERENCES_AT_VERSION = 20500225;

//    public void onCreate() {
/**方法注释*/
- (void)onCreate;

//    public void onConfigurationChanged(Configuration newConfig) {
/**方法注释*/
- (void)onConfigurationChangedWithnewConfig:(NSObject *)newConfig;

//    public static SharedPreferences getSharedPrefs(Context context) {
/**方法注释*/
+ (NSObject *)getSharedPrefsWithcontext:(NSObject *)context;

//    public static AnkiDroidApp getInstance() {
/**方法注释*/
+ (NSObject *)getInstance;

//    public static String getCacheStorageDirectory() {
/**方法注释*/
+ (NSString *)getCacheStorageDirectory;

//    public static Resources getAppResources() {
/**方法注释*/
+ (NSObject *)getAppResources;

//    public static boolean isSdCardMounted() {
/**方法注释*/
+ (BOOL)isSdCardMounted;

//    public static void sendExceptionReport(Throwable e, String origin) {
/**方法注释*/
+ (void)sendExceptionReportWithe:(NSObject *)e origin:(NSString *)origin;

//    public static void sendExceptionReport(Throwable e, String origin, String additionalInfo) {
/**方法注释*/
+ (void)sendExceptionReportWithe:(NSObject *)e origin:(NSString *)origin additionalInfo:(NSString *)additionalInfo;

//    public static boolean setLanguage(String localeCode) {
/**方法注释*/
+ (BOOL)setLanguageWithlocaleCode:(NSString *)localeCode;

//    public static boolean initiateGestures(SharedPreferences preferences) {
/**方法注释*/
+ (BOOL)initiateGesturesWithpreferences:(NSObject *)preferences;

//    public void setAcraReportingMode(String value) {
/**方法注释*/
- (void)setAcraReportingModeWithvalue:(NSString *)value;

//    public static String getFeedbackUrl() {
/**方法注释*/
+ (NSString *)getFeedbackUrl;

//    public static String getManualUrl() {
/**方法注释*/
+ (NSString *)getManualUrl;

//    private static boolean isCurrentLanguage(String l) {
/**方法注释*/
+ (BOOL)isCurrentLanguageWithl:(NSString *)l;

//    public static class ProductionCrashReportingTree extends Timber.HollowTree {
//这是内部类或接口的声明开始

//        private static final ThreadLocal<String> NEXT_TAG = new ThreadLocal<String>();
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//        private static final Pattern ANONYMOUS_CLASS = Pattern.compile("\\$\\d+$");
/**常量注释*/
//static NSObject * const ANONYMOUS_CLASS = Pattern.compile("\\$\\d+$");

//        @Override public void e(String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        @Override public void e(Throwable t, String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦/

//        @Override public void w(String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        @Override public void w(Throwable t, String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        @Override public void i(String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        @Override public void i(Throwable t, String message, Object... args) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        private static String createTag() {
/**方法注释*/
+ (NSString *)createTag;

@end