#import <Foundation/Foundation.h>

@interface Hook : NSObject



//public class Hook {
//这是内部类或接口的声明开始

//    private final String fName = this.getClass().getCanonicalName();
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, copy) NSString *fName;

//    public int hashCode() {
/**方法注释*/
- (NSInteger)hashCode;

//    public boolean equals(Object obj) {
/**方法注释*/
- (BOOL)equalsWithobj:(NSObject *)obj;

//    public void runHook(Object... args) {
/**方法注释*/
- (void)runHookWithargs:(NSObject *)args;

//    public Object runFilter(Object arg, Object... args) {
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

@end