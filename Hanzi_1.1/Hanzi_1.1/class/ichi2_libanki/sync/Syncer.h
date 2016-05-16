#import <Foundation/Foundation.h>

@interface Syncer : NSObject

//public class Syncer {
//这是内部类或接口的声明开始

//    public static final int TYPE_NULL = 0;
/**常量注释*/
//static NSInteger const TYPE_NULL = 0;

//    public static final int TYPE_INTEGER = 1;
/**常量注释*/
//static NSInteger const TYPE_INTEGER = 1;

//    public static final int TYPE_FLOAT = 2;
/**常量注释*/
//static NSInteger const TYPE_FLOAT = 2;

//    public static final int TYPE_STRING = 3;
/**常量注释*/
//static NSInteger const TYPE_STRING = 3;

//    public static final int TYPE_BLOB = 4;
/**常量注释*/
//static NSInteger const TYPE_BLOB = 4;

//    private LinkedList<String> mTablesLeft;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private Cursor mCursor;
/**注释*/
@property (nonatomic, strong) NSObject *mCursor;

//    public Syncer(Collection col, HttpSyncer server) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col server:(NSObject *)server;

//    public Object[] sync() throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)sync;

//    public Object[] sync(Connection con) throws UnknownHttpResponseException {
/**方法注释*/
- (NSMutableArray *)syncWithcon:(NSObject *)con;

//    private void publishProgress(Connection con, int id) {
/**方法注释*/
- (void)publishProgressWithcon:(NSObject *)con id:(NSInteger)id;

//    public JSONObject meta() throws JSONException {
/**方法注释*/
- (NSMutableDictionary *)meta;

//    public JSONObject changes() {
/**方法注释*/
- (NSMutableDictionary *)changes;

//    public JSONObject applyChanges(JSONObject changes) {
/**方法注释*/
- (NSMutableDictionary *)applyChangesWithchanges:(NSMutableDictionary *)changes;

//    public void mergeChanges(JSONObject lchg, JSONObject rchg) {
/**方法注释*/
- (void)mergeChangesWithlchg:(NSMutableDictionary *)lchg rchg:(NSMutableDictionary *)rchg;

//    public JSONObject sanityCheck() {
/**方法注释*/
- (NSMutableDictionary *)sanityCheck;



//    private String usnLim() {
/**方法注释*/
- (NSString *)usnLim;

//    public long finish() {
/**方法注释*/
- (NSInteger)finish;

//    private long finish(long mod) {
/**方法注释*/
- (NSInteger)finishWithmod:(NSInteger)mod;

//    private void prepareToChunk() {
/**方法注释*/
- (void)prepareToChunk;

//    private Cursor cursorForTable(String table) {
/**方法注释*/
- (NSObject *)cursorForTableWithtable:(NSString *)table;

//    private List<Integer> columnTypesForQuery(String table) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)columnTypesForQueryWithtable:(NSString *)table;

//    public JSONObject chunk() {
/**方法注释*/
- (NSMutableDictionary *)chunk;

//    public void applyChunk(JSONObject chunk) {
/**方法注释*/
- (void)applyChunkWithchunk:(NSMutableDictionary *)chunk;

//    private JSONObject removed() {
/**方法注释*/
- (NSMutableDictionary *)removed;

//    public JSONObject start(int minUsn, boolean lnewer, JSONObject graves) {
/**方法注释*/
- (NSMutableDictionary *)startWithminUsn:(NSInteger)minUsn lnewer:(BOOL)lnewer graves:(NSMutableDictionary *)graves;

//    private void remove(JSONObject graves) {
/**方法注释*/
- (void)removeWithgraves:(NSMutableDictionary *)graves;

//    private JSONArray getModels() {
/**方法注释*/
- (NSMutableArray *)getModels;

//    private void mergeModels(JSONArray rchg) {
/**方法注释*/
- (void)mergeModelsWithrchg:(NSMutableArray *)rchg;

//    private JSONArray getDecks() {
/**方法注释*/
- (NSMutableArray *)getDecks;

//    private void mergeDecks(JSONArray rchg) {
/**方法注释*/
- (void)mergeDecksWithrchg:(NSMutableArray *)rchg;

//    private JSONArray getTags() {
/**方法注释*/
- (NSMutableArray *)getTags;

//    private void mergeTags(JSONArray tags) {
/**方法注释*/
- (void)mergeTagsWithtags:(NSMutableArray *)tags;

//    private void mergeRevlog(JSONArray logs) {
/**方法注释*/
- (void)mergeRevlogWithlogs:(NSMutableArray *)logs;

//    private ArrayList<Object[]> newerRows(JSONArray data, String table, int modIdx) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)newerRowsWithdata:(NSMutableArray *)data table:(NSString *)table modIdx:(NSInteger)modIdx;

//    private void mergeCards(JSONArray cards) {
/**方法注释*/
- (void)mergeCardsWithcards:(NSMutableArray *)cards;

//    private void mergeNotes(JSONArray notes) {
/**方法注释*/
- (void)mergeNotesWithnotes:(NSMutableArray *)notes;

//    public String getSyncMsg() {
/**方法注释*/
- (NSString *)getSyncMsg;

//    private JSONObject getConf() {
/**方法注释*/
- (NSMutableDictionary *)getConf;

//    private void mergeConf(JSONObject conf) {
/**方法注释*/
- (void)mergeConfWithconf:(NSMutableDictionary *)conf;

//    private void throwExceptionIfCancelled(Connection con) {
/**方法注释*/
- (void)throwExceptionIfCancelledWithcon:(NSObject *)con;

@end