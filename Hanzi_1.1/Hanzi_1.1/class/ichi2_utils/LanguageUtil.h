#import <Foundation/Foundation.h>

@interface LanguageUtil : NSObject

//public class LanguageUtil {
//这是内部类或接口的声明开始

//    public static final String[] APP_LANGUAGES = { "ar", "bg", "ca", "cs", "de", "el", "es-AR", "es-ES", "et", "fa",
/**常量注释*/
//static NSMutableArray * const APP_LANGUAGES = { "ar", "bg", "ca", "cs", "de", "el", "es-AR", "es-ES", "et", "fa",

//    public static Locale getLocale() {
/**方法注释*/
+ (NSObject *)getLocale;

//    public static Locale getLocale(String localeCode) {
/**方法注释*/
+ (NSObject *)getLocaleWithlocaleCode:(NSString *)localeCode;

@end