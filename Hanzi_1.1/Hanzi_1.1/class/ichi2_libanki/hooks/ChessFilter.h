#import <Foundation/Foundation.h>

@interface ChessFilter : NSObject

//public class ChessFilter extends Hook {
//这是内部类或接口的声明开始





//    private static final String fRenderFen =
/**常量注释*/
//static NSString * const fRenderFen =

//    public Object runFilter(Object arg, Object... args) {
/**方法注释*/
//- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public static void install(Hooks h) {
/**方法注释*/
+ (void)installWithh:(NSObject *)h;

//    public static void uninstall(Hooks h) {
/**方法注释*/
+ (void)uninstallWithh:(NSObject *)h;

//    private String fenToChessboard(String text) {
/**方法注释*/
- (NSString *)fenToChessboardWithtext:(NSString *)text;

@end