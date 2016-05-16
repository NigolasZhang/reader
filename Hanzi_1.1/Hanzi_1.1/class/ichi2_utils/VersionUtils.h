#import <Foundation/Foundation.h>

@interface VersionUtils : NSObject

//public class VersionUtils {
//这是内部类或接口的声明开始

//    public static String getAppName() {
/**方法注释*/
+ (NSString *)getAppName;

//    public static String getPkgVersionName() {
/**方法注释*/
+ (NSString *)getPkgVersionName;

//    public static int getPkgVersionCode() {
/**方法注释*/
+ (NSInteger)getPkgVersionCode;

//    public static boolean isReleaseVersion() {
/**方法注释*/
+ (BOOL)isReleaseVersion;

@end