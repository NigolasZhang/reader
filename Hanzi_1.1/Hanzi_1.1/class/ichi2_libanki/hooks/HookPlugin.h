#import <Foundation/Foundation.h>

@interface HookPlugin : NSObject

//public interface HookPlugin { 
//这是内部类或接口的声明开始

//    public void install(Hooks h);
/**方法注释*/
- (void)installWithh:(NSObject *)h;

//    public void uninstall(Hooks h);   
/**方法注释*/
- (void)uninstallWithh:(NSObject *)h;

//    public int hashCode();
/**方法注释*/
- (NSInteger)hashCode;

//    public boolean equals(Object obj);
/**方法注释*/
- (BOOL)equalsWithobj:(NSObject *)obj;

//    public Object runFilter(Object arg, Object... args);    
/**方法注释*/
- (NSObject *)runFilterWitharg:(NSObject *)arg args:(NSObject *)args;

//    public void runHook(Object... args);
/**方法注释*/
- (void)runHookWithargs:(NSObject *)args;

@end