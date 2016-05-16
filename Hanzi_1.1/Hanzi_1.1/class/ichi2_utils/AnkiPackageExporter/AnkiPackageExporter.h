#import <Foundation/Foundation.h>

@interface AnkiPackageExporter : NSObject

//public final class AnkiPackageExporter extends AnkiExporter {
//这是内部类或接口的声明开始

//    public AnkiPackageExporter(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col;

//    public void exportInto(String path) throws IOException, JSONException {
/**方法注释*/
- (void)exportIntoWithpath:(NSString *)path;

//    private JSONObject exportVerbatim(ZipFile z) throws IOException {
/**方法注释*/
- (NSMutableDictionary *)exportVerbatimWithz:(NSObject *)z;

//    private JSONObject exportFiltered(ZipFile z, String path) throws IOException, JSONException {
/**方法注释*/
- (NSMutableDictionary *)exportFilteredWithz:(NSObject *)z path:(NSString *)path;

//    protected void prepareMedia() {
/**方法注释*/
- (void)prepareMedia;

@end