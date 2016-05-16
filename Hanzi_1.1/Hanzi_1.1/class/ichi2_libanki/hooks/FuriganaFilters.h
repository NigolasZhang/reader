#import <Foundation/Foundation.h>

@interface FuriganaFilters : NSObject

//public class FuriganaFilters {
//这是内部类或接口的声明开始

//    private static final Pattern r = Pattern.compile(" ?([^ >]+?)\\[(.+?)\\]");
/**常量注释*/
//static NSObject * const r = Pattern.compile(" ?([^ >]+?)\\[(.+?)\\]");



//    public void install(Hooks h) {
/**方法注释*/
- (void)installWithh:(NSObject *)h;

//    private static String noSound(Matcher match, String repl) {
/**方法注释*/
+ (NSString *)noSoundWithmatch:(NSObject *)match repl:(NSString *)repl;

//    public class Kanji extends Hook {
//这是内部类或接口的声明开始

//        public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public class Kana extends Hook {
//这是内部类或接口的声明开始

//        public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public class Furigana extends Hook {
//这是内部类或接口的声明开始

//        public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

@end