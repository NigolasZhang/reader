#import <Foundation/Foundation.h>

@interface HebrewFixFilter : NSObject

//public class HebrewFixFilter extends Hook {
//这是内部类或接口的声明开始

//    private static final Pattern sHebrewPattern = Pattern.compile(
/**常量注释*/
//static NSObject * const sHebrewPattern = Pattern.compile(

//    public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public static void install(Hooks h) {
/**方法注释*/
+ (void)installWithh:(NSObject *)h;

//    public static void uninstall(Hooks h) {
/**方法注释*/
+ (void)uninstallWithh:(NSObject *)h;

//    private String applyFixForHebrew(String text) {
/**方法注释*/
- (NSString *)applyFixForHebrewWithtext:(NSString *)text;

//    private boolean regionOverlapsMedia(List<Pair<Integer, Integer>> mediaRegions, int start, int end) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

@end