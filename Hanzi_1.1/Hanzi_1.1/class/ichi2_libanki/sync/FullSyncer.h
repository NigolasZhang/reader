#import <Foundation/Foundation.h>

@interface FullSyncer : NSObject

//public class FullSyncer extends HttpSyncer {
//这是内部类或接口的声明开始

//    public FullSyncer(Collection col, String hkey, Connection con) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col hkey:(NSString *)hkey con:(NSObject *)con;

//    public String syncURL() {
/**方法注释*/
- (NSString *)syncURL;

//    public Object[] download() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)download;

//    public Object[] upload() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)upload;

@end