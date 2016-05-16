#import <Foundation/Foundation.h>

@interface HintFilter : NSObject

//public class HintFilter {
//这是内部类或接口的声明开始

//    public void install(Hooks h) {
/**方法注释*/
- (void)installWithh:(NSObject *)h;

//    public class Hint extends Hook {
//这是内部类或接口的声明开始

//        public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

@end