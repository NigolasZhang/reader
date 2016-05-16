#import <Foundation/Foundation.h>

@interface HttpSyncer : NSObject

//public class HttpSyncer {
//这是内部类或接口的声明开始

//    private static final String BOUNDARY = "Anki-sync-boundary";
/**常量注释*/
//static NSString * const BOUNDARY = "Anki-sync-boundary";

//    public static final String ANKIWEB_STATUS_OK = "OK";
/**常量注释*/
//static NSString * const ANKIWEB_STATUS_OK = "OK";

//    public volatile long bytesSent = 0;
/**注释*/
//@property (nonatomic, strong) NSObject *long;

//    public volatile long bytesReceived = 0;
/**注释*/
//@property (nonatomic, strong) NSObject *long;

//    public volatile long mNextSendS = 1024;
/**注释*/
//@property (nonatomic, strong) NSObject *long;

//    public volatile long mNextSendR = 1024;
/**注释*/
//@property (nonatomic, strong) NSObject *long;

//    protected String mHKey;
/**注释*/
@property (nonatomic, copy) NSString *mHKey;

//    protected String mSKey;
/**注释*/
@property (nonatomic, copy) NSString *mSKey;

//    protected Connection mCon;
/**注释*/
@property (nonatomic, strong) NSObject *mCon;

//    protected Map<String, Object> mPostVars;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public HttpSyncer(String hkey, Connection con) {
/**构造方法注释*/
- (instancetype)initWithhkey:(NSString *)hkey con:(NSObject *)con;

//    public void assertOk(HttpResponse resp) throws UnknownHttpResponseException {
/**方法注释*/
- (void)assertOkWithresp:(NSObject *)resp;

//    public HttpResponse req(String method) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)reqWithmethod:(NSString *)method;

//    public HttpResponse req(String method, InputStream fobj) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)reqWithmethod:(NSString *)method fobj:(NSObject *)fobj;

//    public HttpResponse req(String method, int comp, InputStream fobj) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)reqWithmethod:(NSString *)method comp:(NSInteger)comp fobj:(NSObject *)fobj;

//    public HttpResponse req(String method, InputStream fobj, int comp) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)reqWithmethod:(NSString *)method fobj:(NSObject *)fobj comp:(NSInteger)comp;

//    public HttpResponse req(String method, InputStream fobj, int comp, JSONObject registerData) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)reqWithmethod:(NSString *)method fobj:(NSObject *)fobj comp:(NSInteger)comp registerData:(NSMutableDictionary *)registerData;

//    public HttpResponse req(String method, InputStream fobj, int comp, JSONObject registerData,
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public void writeToFile(InputStream source, String destination) throws IOException {
/**方法注释*/
- (void)writeToFileWithsource:(NSObject *)source destination:(NSString *)destination;

//    public String stream2String(InputStream stream) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public String stream2String(InputStream stream, int maxSize) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private void publishProgress() {
/**方法注释*/
- (void)publishProgress;

//    public HttpResponse hostKey(String arg1, String arg2) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)hostKeyWitharg1:(NSString *)arg1 arg2:(NSString *)arg2;

//    public JSONObject applyChanges(JSONObject kw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)applyChangesWithkw:(NSMutableDictionary *)kw;

//    public JSONObject start(JSONObject kw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)startWithkw:(NSMutableDictionary *)kw;

//    public JSONObject chunk(JSONObject kw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)chunkWithkw:(NSMutableDictionary *)kw;

//    public JSONObject chunk() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)chunk;

//    public long finish() throws UnknownHttpResponseException {
/**方法注释*/
- (NSInteger)finish;

//    public HttpResponse meta() throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)meta;

//    public Object[] download() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)download;

//    public Object[] upload() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)upload;

//    public JSONObject sanityCheck2(JSONObject client) throws UnknownHttpResponseException {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public void applyChunk(JSONObject sech) throws UnknownHttpResponseException {
/**方法注释*/
- (void)applyChunkWithsech:(NSMutableDictionary *)sech;

//    public class ProgressByteEntity extends AbstractHttpEntity {
//这是内部类或接口的声明开始

//        private InputStream mInputStream;
/**注释*/
@property (nonatomic, strong) NSObject *mInputStream;

//        private long mLength;
/**注释*/
@property (nonatomic, assign) NSInteger mLength;

//        public ProgressByteEntity(File file) {
/**构造方法注释*/
- (instancetype)initWithfile:(NSObject *)file;

//        public void writeTo(OutputStream outstream) throws IOException {
/**方法注释*/
- (void)writeToWithoutstream:(NSObject *)outstream;

//        public InputStream getContent() throws IOException, IllegalStateException {
/**方法注释*/
- (NSObject *)getContent;

//        public long getContentLength() {
/**方法注释*/
- (NSInteger)getContentLength;

//        public boolean isRepeatable() {
/**方法注释*/
- (BOOL)isRepeatable;

//        public boolean isStreaming() {
/**方法注释*/
- (BOOL)isStreaming;

//    public static ByteArrayInputStream getInputStream(String string) {
/**方法注释*/
+ (NSObject *)getInputStreamWithstring:(NSString *)string;

//    public HttpResponse register(String user, String pw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)registerWithuser:(NSString *)user pw:(NSString *)pw;

//    public String syncURL() {
/**方法注释*/
- (NSString *)syncURL;

@end