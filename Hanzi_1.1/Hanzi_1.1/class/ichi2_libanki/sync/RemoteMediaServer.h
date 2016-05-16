#import <Foundation/Foundation.h>

@interface RemoteMediaServer : NSObject

//public class RemoteMediaServer extends HttpSyncer {
//这是内部类或接口的声明开始

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) NSObject *mCol;

//    public RemoteMediaServer(Collection col, String hkey, Connection con) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col hkey:(NSString *)hkey con:(NSObject *)con;

//    public String syncURL() {
/**方法注释*/
- (NSString *)syncURL;

//    public JSONObject begin() throws UnknownHttpResponseException, MediaSyncException {
/**方法注释*/
- (NSMutableDictionary *)begin;

//    public JSONArray mediaChanges(int lastUsn) throws UnknownHttpResponseException, MediaSyncException {
/**方法注释*/
- (NSMutableArray *)mediaChangesWithlastUsn:(NSInteger)lastUsn;

//    public ZipFile downloadFiles(List<String> top) throws UnknownHttpResponseException {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public JSONArray uploadChanges(File zip) throws UnknownHttpResponseException, MediaSyncException {
/**方法注释*/
- (NSMutableArray *)uploadChangesWithzip:(NSObject *)zip;

//    public String mediaSanity(int lcnt) throws UnknownHttpResponseException, MediaSyncException {
/**方法注释*/
- (NSString *)mediaSanityWithlcnt:(NSInteger)lcnt;

//    private <T> T _dataOnly(JSONObject resp, Class<T> returnType) throws MediaSyncException {
/**方法注释这个方法有<T>注意啦*/
- (NSObject *)_dataOnlyWithresp:(NSMutableDictionary *)resp returnType:(NSObject *)returnType;

//            if (returnType == String.class) {
//这是内部类或接口的声明开始

//            } else if (returnType == JSONObject.class) {
//这是内部类或接口的声明开始

//            } else if (returnType == JSONArray.class) {
//这是内部类或接口的声明开始

@end