#import <Foundation/Foundation.h>

@interface RemoteServer : NSObject

//public class RemoteServer extends HttpSyncer {
//这是内部类或接口的声明开始

//    public RemoteServer(Connection con, String hkey) {
/**构造方法注释*/
- (instancetype)initWithcon:(NSObject *)con hkey:(NSString *)hkey;

//    public HttpResponse hostKey(String user, String pw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)hostKeyWithuser:(NSString *)user pw:(NSString *)pw;

//    public HttpResponse meta() throws UnknownHttpResponseException {
/**方法注释*/
- (NSObject *)meta;

//    public JSONObject applyChanges(JSONObject kw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)applyChangesWithkw:(NSMutableDictionary *)kw;

//    public JSONObject start(JSONObject kw) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)startWithkw:(NSMutableDictionary *)kw;

//    public JSONObject chunk() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)chunk;

//    public void applyChunk(JSONObject sech) throws UnknownHttpResponseException {
/**方法注释*/
- (void)applyChunkWithsech:(NSMutableDictionary *)sech;

//    public JSONObject sanityCheck2(JSONObject client) throws UnknownHttpResponseException {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public long finish() throws UnknownHttpResponseException {
/**方法注释*/
- (NSInteger)finish;

//    private JSONObject _run(String cmd, JSONObject data) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableDictionary *)_runWithcmd:(NSString *)cmd data:(NSMutableDictionary *)data;

@end