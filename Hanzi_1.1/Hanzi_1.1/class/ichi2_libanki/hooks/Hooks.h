#import <Foundation/Foundation.h>

@interface Hooks : NSObject

//public class Hooks {
//这是内部类或接口的声明开始

//    public static Hooks sInstance;
/**注释*/
@property (nonatomic, strong) NSObject *sInstance;

//    private static Map<String, List<Hook>> hooks;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public static synchronized Hooks getInstance(Context context) {
/**方法注释*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private Hooks(Context context) {
/**构造方法注释*/
- (instancetype)initWithcontext:(NSObject *)context;

//    public void addHook(String hook, Hook func) {
/**方法注释*/
- (void)addHookWithhook:(NSString *)hook func:(NSObject *)func;

//    public void remHook(String hook, Hook func) {
/**方法注释*/
- (void)remHookWithhook:(NSString *)hook func:(NSObject *)func;

//    public void runHook(String hook, Object... args) {
/**方法注释*/
- (void)runHookWithhook:(NSString *)hook args:(NSObject *)args;

//    public static Object runFilter(String hook, Object arg, Object... args) {
/**方法注释*/
+ (NSObject *)runFilterWithhook:(NSString *)hook arg:(NSObject *)arg args:(NSObject *)args;

@end