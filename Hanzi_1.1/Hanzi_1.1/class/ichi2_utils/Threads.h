#import <Foundation/Foundation.h>

@interface Threads : NSObject

//public class Threads {
//这是内部类或接口的声明开始

//    private Threads() {
/**构造方法注释*/
- (instancetype)init;

//    public interface ThreadChecker {
//这是内部类或接口的声明开始

//        public void checkThread();
/**方法注释*/
- (void)checkThread;

//    public static ThreadChecker newSingleThreadChecker(Thread thread) {
/**方法注释*/
+ (NSObject *)newSingleThreadCheckerWiththread:(NSObject *)thread;

//    public static ThreadChecker newCurrentThreadChecker() {
/**方法注释*/
+ (NSObject *)newCurrentThreadChecker;

//    public static ThreadChecker newLazySingleThreadChecker() {
/**方法注释*/
+ (NSObject *)newLazySingleThreadChecker;

//    public static boolean isOnMainThread() {
/**方法注释*/
+ (BOOL)isOnMainThread;

//    public static void checkMainThread() {
/**方法注释*/
+ (void)checkMainThread;

//    public static void checkNotMainThread() {
/**方法注释*/
+ (void)checkNotMainThread;

//    private static class SingleThreadChecker implements ThreadChecker {
//这是内部类或接口的声明开始

//        private Thread mThread;
/**注释*/
@property (nonatomic, strong) NSObject *mThread;

//        private SingleThreadChecker(Thread thread) {
/**构造方法注释*/
- (instancetype)initWiththread:(NSObject *)thread;

//        public void checkThread() {
/**方法注释*/
- (void)checkThread;

@end