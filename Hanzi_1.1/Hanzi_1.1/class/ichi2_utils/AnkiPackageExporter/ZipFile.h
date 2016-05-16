#import <Foundation/Foundation.h>

@interface ZipFile : NSObject

//class Exporter {
//这是内部类或接口的声明开始

//    public Exporter(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col;

//    public Exporter(Collection col, Long did) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col did:(NSInteger)did;

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

//class ZipFile {
//这是内部类或接口的声明开始

//    private ZipOutputStream mZos;
/**注释*/
@property (nonatomic, strong) NSObject *mZos;

//    public ZipFile(String path) throws FileNotFoundException {
/**构造方法注释*/
- (instancetype)initWithpath:(NSString *)path;

//    public void write(String path, String entry) throws IOException {
/**方法注释*/
- (void)writeWithpath:(NSString *)path entry:(NSString *)entry;

//    public void writeStr(String entry, String value) throws IOException {
/**方法注释*/
- (void)writeStrWithentry:(NSString *)entry value:(NSString *)value;

//    private void writeEntry(BufferedInputStream bis, ZipEntry ze) throws IOException {
/**方法注释*/
- (void)writeEntryWithbis:(NSObject *)bis ze:(NSObject *)ze;

//    public void close() {
/**方法注释*/
- (void)close;

@end