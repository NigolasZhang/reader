#import <Foundation/Foundation.h>

@interface AnkiExporter : NSObject

//class AnkiExporter extends Exporter {
//这是内部类或接口的声明开始

//    public AnkiExporter(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col;

//    public void exportInto(String path) throws JSONException, IOException {
/**方法注释*/
- (void)exportIntoWithpath:(NSString *)path;

//    private boolean _modelHasMedia(JSONObject model, String fname) throws JSONException {
/**方法注释*/
- (BOOL)_modelHasMediaWithmodel:(NSMutableDictionary *)model fname:(NSString *)fname;

//    protected void postExport() {
/**方法注释*/
- (void)postExport;

//    private String removeSystemTags(String tags) {
/**方法注释*/
- (NSString *)removeSystemTagsWithtags:(NSString *)tags;

//    public void setIncludeSched(boolean includeSched) {
/**方法注释*/
- (void)setIncludeSchedWithincludeSched:(BOOL)includeSched;

//    public void setIncludeMedia(boolean includeMedia) {
/**方法注释*/
- (void)setIncludeMediaWithincludeMedia:(BOOL)includeMedia;

//    public void setDid(Long did) {
/**方法注释*/
- (void)setDidWithdid:(NSInteger)did;

@end