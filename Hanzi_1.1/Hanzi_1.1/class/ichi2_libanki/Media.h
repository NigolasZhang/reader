//
//  Media.h
//  volNotes01
//
//  Created by A on 16/4/28.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class AnkiDb;

@interface Media : NSObject

/**常量注释*///正则表达式//懒加载 //弱指针弱引用 //枚举类型 //Iterable //Integer
//**常量注释*//+ (NSInteger)dehexifyIDWithid:(NSString *)id;
//**常量注释*//xid- (NSString *)hexifyIDWithxid:(NSInteger)xid;


//    public static String ids2str(int[] ids) {
//请谨慎，这个不完整/**常量注释*/
//**常量注释*//+ (NSString *)ids2strWithids:(NSMutableArray *)ids;
//**常量注释*//
//**常量注释*////    public static String ids2str(long[] ids) {
//**常量注释*////请谨慎，这个不完整/**常量注释*/
//**常量注释*//static 我错啦 * const 我错啦我错啦
//**常量注释*//// fangfachongfu

/**常量注释*///Blockdaiti













//    private static final Pattern fSoundRegexps = Pattern.compile("(?i)(\\[sound:([^]]+)\\])");
/**常量注释*///正则表达式
//static Pattern * const fSoundRegexps = Pattern.compile("(?i)(\\[sound:([^]]+)\\])");

//    public static List<Pattern> mRegexps =  Arrays.asList(fSoundRegexps, fImgRegExpQ, fImgRegExpU);
/**敞亮，注意啦！*/
//static NSMutableArray * const mRegexps = ;

//    private Collection mCol;
/**注释*/
@property (nonatomic, retain) XCollection *mCol;

//    private String mDir;
/**注释*/
@property (nonatomic, copy) NSString *mDir;

//    private AnkiDb mDb;
/**注释*/
@property (nonatomic, strong) AnkiDb *mDb;

//    public Media(Collection col, boolean server) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col server:(BOOL)server;

//    public void connect() {
/**方法注释*/
- (void)connect;

//    public void _initDB() {
/**方法注释*/
- (void)_initDB;

//    public void maybeUpgrade() {
/**方法注释*/
- (void)maybeUpgrade;

//    public void close() {
/**方法注释*/
- (void)close;

//    public String dir() {
/**方法注释*/
- (NSString *)dir;

//    public String addFile(File ofile) throws IOException {
/**方法注释*/
- (NSString *)addFileWithofile:(NSObject *)ofile;

//    private String writeData(File ofile) throws IOException {
/**方法注释*/
- (NSString *)writeDataWithofile:(NSObject *)ofile;

//    public List<String> filesInStr(Long mid, String string) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)filesInStrWithmid:(NSInteger)mid string:(NSString *)string;

//    public List<String> filesInStr(Long mid, String string, boolean includeRemote) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)filesInStrWithmid:(NSInteger)mid string:(NSString *)string includeRemote:(BOOL)includeRemote;

//    private List<String> _expandClozes(String string) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_expandClozesWithstring:(NSString *)string;

//    public String strip(String txt) {
/**方法注释*/
- (NSString *)stripWithtxt:(NSString *)txt;

//    public String escapeImages(String string) {
/**方法注释*/
- (NSString *)escapeImagesWithstring:(NSString *)string;

//    public String escapeImages(String string, boolean unescape) {
/**方法注释*/
- (NSString *)escapeImagesWithstring:(NSString *)string unescape:(BOOL)unescape;

//    public List<List<String>> check() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)check;

//    private List<List<String>> check(File[] local) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)checkWithlocal:(NSMutableArray *)local;

//    private void _normalizeNoteRefs(long nid) {
/**方法注释*/
- (void)_normalizeNoteRefsWithnid:(NSInteger)nid;

//    public boolean have(String fname) {
/**方法注释*/
- (BOOL)haveWithfname:(NSString *)fname;

//    public String stripIllegal(String str) {
/**方法注释*/
- (NSString *)stripIllegalWithstr:(NSString *)str;

//    public boolean hasIllegal(String str) {
/**方法注释*/
- (BOOL)hasIllegalWithstr:(NSString *)str;

//    public void findChanges() {
/**方法注释*/
- (void)findChanges;

//    public void findChanges(boolean force) {
/**方法注释*/
- (void)findChangesWithforce:(BOOL)force;

//    public boolean haveDirty() {
/**方法注释*/
- (BOOL)haveDirty;

//    private long _mtime(String path) {
/**方法注释*/
- (NSInteger)_mtimeWithpath:(NSString *)path;

//    private String _checksum(String path) {
/**方法注释*/
- (NSString *)_checksumWithpath:(NSString *)path;

//    public Long _changed() {
/**方法注释*/
- (NSInteger)_changed;

//    private void _logChanges()  {
/**方法注释*/
- (void)_logChanges;

//    private Pair<List<String>, List<String>> _changes() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)_changes;

//    public int lastUsn() {
/**方法注释*/
- (NSInteger)lastUsn;

//    public void setLastUsn(int usn) {
/**方法注释*/
- (void)setLastUsnWithusn:(NSInteger)usn;

//    public Pair<String, Integer> syncInfo(String fname) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)syncInfoWithfname:(NSString *)fname;

//    public void markClean(List<String> fnames) {
/**方法注释这个方法有泛型，注意啦！*/
- (void)markCleanWithfnames:(NSMutableArray *)fnames;

//    public void syncDelete(String fname) {
/**方法注释*/
- (void)syncDeleteWithfname:(NSString *)fname;

//    public int mediacount() {
/**方法注释*/
- (NSInteger)mediacount;

//    public int dirtyCount() {
/**方法注释*/
- (NSInteger)dirtyCount;

//    public void forceResync() {
/**方法注释*/
- (void)forceResync;

//    public Pair<File, List<String>> mediaChangesZip() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)mediaChangesZip;

//    public int addFilesFromZip(ZipFile z) throws IOException {
/**方法注释*/
- (NSInteger)addFilesFromZipWithz:(NSObject *)z;

//    public AnkiDb getDb() {
/**方法注释*/
- (AnkiDb *)getDb;

//    public static int indexOfFname(Pattern p) {
/**方法注释*/
+ (NSInteger)indexOfFnameWithp:(NSObject *)p;

//    public void markFileAdd(String fname) {
/**方法注释*/
- (void)markFileAddWithfname:(NSString *)fname;

//    public void removeFile(String fname) {
/**方法注释*/
- (void)removeFileWithfname:(NSString *)fname;

//    public boolean needScan() {
/**方法注释*/
- (BOOL)needScan;



@end
