#import <Foundation/Foundation.h>

@interface Exporter : NSObject

//class Exporter {
//这是内部类或接口的声明开始

//    public Exporter(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col;

//    public Exporter(Collection col, Long did) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col did:(NSInteger)did;

@end