#import <Foundation/Foundation.h>

@interface HtmlUtil : NSObject

//public class HtmlUtil {
//这是内部类或接口的声明开始

//    private HtmlUtil() {
/**构造方法注释*/
- (instancetype)init;

//    public static String unescape(String htmlText) {
/**方法注释*/
+ (NSString *)unescapeWithhtmlText:(NSString *)htmlText;

//    public static String nfcNormalized(String txt) {
/**方法注释*/
+ (NSString *)nfcNormalizedWithtxt:(NSString *)txt;

@end