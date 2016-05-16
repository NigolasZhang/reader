#import <Foundation/Foundation.h>

@interface MethodLogger : NSObject





//public class MethodLogger {
//这是内部类或接口的声明开始

//    private MethodLogger() {
/**构造方法注释*/
- (instancetype)init;

//    public static void log(String message) {
/**方法注释*/
+ (void)logWithmessage:(NSString *)message;

//    public static void log() {
/**方法注释*/
+ (void)log;

//    private static void logInternal(String message) {
/**方法注释*/
+ (void)logInternalWithmessage:(NSString *)message;



@end