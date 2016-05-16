#import <Foundation/Foundation.h>

@interface Leech : NSObject

//public class Leech {
//这是内部类或接口的声明开始

//    public class LeechHook extends Hook {
//这是内部类或接口的声明开始

//        public void runHook(Object... args) {
/**方法注释*/
- (void)runHookWithargs:(NSObject *)args;

//                    public void run() {
/**方法注释*/
- (void)run;

//    public void installHook(Hooks h) {
/**方法注释*/
- (void)installHookWithh:(NSObject *)h;

@end