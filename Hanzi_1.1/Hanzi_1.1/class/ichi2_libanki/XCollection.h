//
//  Collection.h
//  volNotes01
//
//  Created by A on 16/4/28.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tags;
@class AnkiDb;
@class Media;
@class Decks;
@class Models;
@class Sched;
@class Note;
@class Card;

@interface XCollection : NSObject

//    private AnkiDb mDb;
/**注释*/
@property (nonatomic, strong) AnkiDb *mDb;

//    private boolean mServer;
/**注释*/
@property (nonatomic, assign) BOOL mServer;

//    private double mLastSave;
/**注释*/
@property (nonatomic, strong) NSNumber *mLastSave;

//    private Media mMedia;
/**注释*/
@property (nonatomic, strong) Media *mMedia;

//    private Decks mDecks;
/**注释*/
@property (nonatomic, strong) Decks *mDecks;

//    private Models mModels;
/**注释*/
@property (nonatomic, strong) Models *mModels;

//    private Tags mTags;
/**注释*/
@property (nonatomic, strong) Tags *mTags;

//    private Sched mSched;
/**注释*/
@property (nonatomic, strong) Sched *mSched;

//    private double mStartTime;
/**注释*/
@property (nonatomic, strong) NSNumber *mStartTime;

//    private int mStartReps;
/**注释*/
@property (nonatomic, assign) NSInteger mStartReps;

//    private long mCrt;
/**注释*/
@property (nonatomic, assign) NSInteger mCrt;

//    private long mMod;
/**注释*/
@property (nonatomic, assign) NSInteger mMod;

//    private long mScm;
/**注释*/
@property (nonatomic, assign) NSInteger mScm;

//    private boolean mDty;
/**注释*/
@property (nonatomic, assign) BOOL mDty;

//    private int mUsn;
/**注释*/
@property (nonatomic, assign) NSInteger mUsn;

//    private long mLs;
/**注释*/
@property (nonatomic, assign) NSInteger mLs;

//    private JSONObject mConf;
/**注释*/
@property (nonatomic, strong) NSMutableDictionary *mConf;

//    private LinkedList<Object[]> mUndo;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mUndo;

//    private String mPath;
/**注释*/
@property (nonatomic, copy) NSString *mPath;

//    private boolean mDebugLog;
/**注释*/
@property (nonatomic, assign) BOOL mDebugLog;

//    private PrintWriter mLogHnd;
/**注释*/
@property (nonatomic, strong) NSFileHandle *mLogHnd;



//    private static final Pattern fClozeTagStart = Pattern.compile("<%cloze:");
/**常量注释*///正则表达式；
//static Pattern * const fClozeTagStart = Pattern.compile("<%cloze:");

//    public static final String defaultConf = "{"
/**常量注释*///正则表达式；
//static NSString * const defaultConf = "{"

//    public static final int UNDO_REVIEW = 0;
/**常量注释*/
//static NSInteger const UNDO_REVIEW = 0;

//    public static final int UNDO_BURY_NOTE = 2;
/**常量注释*/
//static NSInteger const UNDO_BURY_NOTE = 2;

//    public static final int UNDO_SUSPEND_CARD = 3;
/**常量注释*/
//static NSInteger const UNDO_SUSPEND_CARD = 3;

//    public static final int UNDO_SUSPEND_NOTE = 4;
/**常量注释*/
//static NSInteger const UNDO_SUSPEND_NOTE = 4;

//    public static final int UNDO_DELETE_NOTE = 5;
/**常量注释*/
//static NSInteger const UNDO_DELETE_NOTE = 5;

//    public static final int UNDO_BURY_CARD = 7;
/**常量注释*/
//static NSInteger const UNDO_BURY_CARD = 7;

//    private static final int[] fUndoNames = new int[]{
/**常量注释*/
//static NSMutableArray * const fUndoNames = new int[]{

//    private static final int UNDO_SIZE_MAX = 20;
/**常量注释*/
//static NSInteger const UNDO_SIZE_MAX = 20;

//    public Collection(AnkiDb db, String path) {
/**构造方法注释*/
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path;

//    public Collection(AnkiDb db, String path, boolean server) {
/**构造方法注释*/
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path server:(BOOL)server;

//    public Collection(AnkiDb db, String path, boolean server, boolean log) {
/**构造方法注释*/
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path server:(BOOL)server log:(BOOL)log;

//    public String name() {
/**方法注释*/
- (NSString *)xname;

//    public void load() {
/**方法注释*/
- (void)load;

//    public void setMod() {
/**方法注释*/
- (void)setMod;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public void flush(long mod) {
/**方法注释*/
- (void)flushWithmod:(NSInteger)mod;

//    public synchronized void save() {
/**方法注释*/
- (void)save;

//    public synchronized void save(long mod) {
/**方法注释*/
- (void)saveWithmod:(NSInteger)mod;

//    public synchronized void save(String name, long mod) {
/**方法注释*/
- (void)saveWithname:(NSString *)name mod:(NSInteger)mod;

//    public void autosave() {
/**方法注释*/
- (void)autosave;

//    public void lock() {
/**方法注释*/
- (void)lock;

//    public synchronized void close() {
/**方法注释*/
- (void)close;

//    public synchronized void close(boolean save) {
/**方法注释*/
- (void)closeWithsave:(BOOL)save;

//    public void reopen() {
/**方法注释*/
- (void)reopen;

//    public void modSchemaNoCheck() {
/**方法注释*/
- (void)modSchemaNoCheck;

//    public void modSchema() throws ConfirmModSchemaException {
/**方法注释*/
- (void)modSchema;

//    public void modSchema(boolean check) throws ConfirmModSchemaException {
/**方法注释*/
- (void)modSchemaWithcheck:(BOOL)check;

//    public boolean schemaChanged() {
/**方法注释*/
- (BOOL)schemaChanged;

//    public int usn() {
/**方法注释*/
- (NSInteger)usn;

//    public void beforeUpload() {
/**方法注释*/
- (void)beforeUpload;

//    public Card getCard(long id) {
/**方法注释*/
- (Card *)getCardWithxid:(NSInteger)xid;

//    public Note getNote(long id) {
/**方法注释*/
- (Note *)getNoteWithxid:(NSInteger)xid;

//    public int nextID(String type) {
/**方法注释*/
- (NSInteger)nextIDWithtype:(NSString *)type;

//    public void reset() {
/**方法注释*/
- (void)reset;

//    public void _logRem(long[] ids, int type) {
/**方法注释*/
- (void)_logRemWithids:(NSMutableArray *)ids type:(NSInteger)type;

//    public int noteCount() {
/**方法注释*/
- (NSInteger)noteCount;

//    public Note newNote() {
/**方法注释*/
- (Note *)newNote;

//    public Note newNote(boolean forDeck) {
/**方法注释*/
- (Note *)newNoteWithforDeck:(BOOL)forDeck;

//    public Note newNote(JSONObject m) {
/**方法注释*/
- (Note *)newNoteWithm:(NSMutableDictionary *)m;

//    public int addNote(Note note) {
/**方法注释*/
- (NSInteger)addNoteWithnote:(Note *)note;

//    public void remNotes(long[] ids) {
/**方法注释*/
- (void)remNotesWithids:(NSMutableArray *)ids;

//    public void _remNotes(long[] ids) {
/**方法注释*/
- (void)_remNotesWithids:(NSMutableArray *)ids;

//    private ArrayList<JSONObject> findTemplates(Note note) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findTemplatesWithnote:(Note *)note;

//    private ArrayList<JSONObject> _tmplsFromOrds(JSONObject model, ArrayList<Integer> avail) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_tmplsFromOrdsWithmodel:(NSMutableDictionary *)model avail:(NSMutableArray *)avail;

//	public ArrayList<Long> genCards(List<Long> nids) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)genCardsWithnids:(NSMutableArray *)nids;

//    public ArrayList<Long> genCards(long[] nids) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSMutableArray *)genCardsWithnids:(NSMutableArray *)nids;

//	public List<Card> previewCards(Note note, int type) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)previewCardsWithnote:(Note *)note type:(NSInteger)type;

//    public List<Card> previewCards(Note note) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)previewCardsWithnote:(Note *)note;

//    private Card _newCard(Note note, JSONObject template, int due) {
/**方法注释*/
- (Card *)_newCardWithnote:(Note *)note template:(NSMutableDictionary *)template due:(NSInteger)due;

//    private Card _newCard(Note note, JSONObject template, int due, boolean flush) {
/**方法注释*/
- (Card *)_newCardWithnote:(Note *)note template:(NSMutableDictionary *)template due:(NSInteger)due flush:(BOOL)flush;

//    public int _dueForDid(long did, int due) {
/**方法注释*/
- (NSInteger)_dueForDidWithdid:(NSInteger)did due:(NSInteger)due;

//    public boolean isEmpty() {
/**方法注释*/
- (BOOL)isEmpty;

//    public int cardCount() {
/**方法注释*/
- (NSInteger)cardCount;

//    public int cardCount(Long[] ls) {
/**方法注释*/
- (NSInteger)cardCountWithls:(NSMutableArray *)ls;

//    public void remCards(long[] ids) {
/**方法注释*/
- (void)remCardsWithids:(NSMutableArray *)ids;

//    public void remCards(long[] ids, boolean notes) {
/**方法注释*/
- (void)remCardsWithids:(NSMutableArray *)ids notes:(BOOL)notes;

//    public List<Long> emptyCids() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)emptyCids;

//    public String emptyCardReport(List<Long> cids) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSString *)emptyCardReportWithcids:(NSMutableArray *)cids;

//    private ArrayList<Object[]> _fieldData(String snids) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_fieldDataWithsnids:(NSString *)snids;

//    public void updateFieldCache(long[] nids) {
/**方法注释*/
- (void)updateFieldCacheWithnids:(NSMutableArray *)nids;

//    public ArrayList<HashMap<String, String>> renderQA() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)renderQA;

//    public ArrayList<HashMap<String, String>> renderQA(int[] ids, String type) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)renderQAWithids:(NSMutableArray *)ids type:(NSString *)type;

//    public HashMap<String, String> _renderQA(Object[] data) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)_renderQAWithdata:(NSMutableArray *)data;

//    public HashMap<String, String> _renderQA(Object[] data, String qfmt, String afmt) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)_renderQAWithdata:(NSMutableArray *)data qfmt:(NSString *)qfmt afmt:(NSString *)afmt;

//    public ArrayList<Object[]> _qaData() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_qaData;

//    public ArrayList<Object[]> _qaData(String where) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_qaDataWithwhere:(NSString *)where;

//    public List<Long> findCards(String search) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsWithsearch:(NSString *)search;

//    public List<Long> findCards(String search, String order) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsWithsearch:(NSString *)search order:(NSString *)order;

//    public ArrayList<HashMap<String, String>> findCardsForCardBrowser(String search, boolean order, HashMap<String, String> deckNames) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsForCardBrowserWithsearch:(NSString *)search order:(BOOL)order deckNames:(NSMutableDictionary *)deckNames;

//    public List<Long> findNotes(String query) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findNotesWithquery:(NSString *)query;

//    public int findReplace(List<Long> nids, String src, String dst) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst;

//    public int findReplace(List<Long> nids, String src, String dst, boolean regex) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex;

//    public int findReplace(List<Long> nids, String src, String dst, String field) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst field:(NSString *)field;

//    public int findReplace(List<Long> nids, String src, String dst, boolean regex, String field, boolean fold) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex field:(NSString *)field fold:(BOOL)fold;

//    public List<Pair<String, List<Long>>> findDupes(String fieldName) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findDupesWithfieldName:(NSString *)fieldName;

//    public List<Pair<String, List<Long>>> findDupes(String fieldName, String search) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findDupesWithfieldName:(NSString *)fieldName search:(NSString *)search;

//    public void setTimeLimit(long seconds) {
/**方法注释*/
- (void)setTimeLimitWithseconds:(NSInteger)seconds;

//    public long getTimeLimit() {
/**方法注释*/
- (NSInteger)getTimeLimit;

//    public void startTimebox() {
/**方法注释*/
- (void)startTimebox;

//    public Long[] timeboxReached() {
/**方法注释*/
- (NSMutableArray *)timeboxReached;

//    public void clearUndo() {
/**方法注释*/
- (void)clearUndo;

//    public String undoName(Resources res) {
/**方法注释*/
- (NSString *)undoNameWithres:(NSObject *)res;

//    public boolean undoAvailable() {
/**方法注释*/
- (BOOL)undoAvailable;

//    public long undo() {
/**方法注释*/
- (NSInteger)undo;

//    public void markUndo(int type, Object[] o) {
/**方法注释*/
- (void)markUndoWithtype:(NSInteger)type o:(NSMutableArray *)o;

//    public void markReview(Card card) {
/**方法注释*/
- (void)markReviewWithcard:(Card *)card;

//    public boolean basicCheck() {
/**方法注释*/
- (BOOL)basicCheck;

//    public long fixIntegrity() {
/**方法注释*/
- (NSInteger)fixIntegrity;

//    public void optimize() {
/**方法注释*/
- (void)optimize;

//    public void log(Object... args) {
/**方法注释*///- (instancetype)initWithFormat:(NSString *)format, ...;
- (void)logWithargs:(NSObject *)args, ...;

//    private void _openLog() {
/**方法注释*/
- (void)_openLog;

//    private void _closeLog() {
/**方法注释*/
- (void)_closeLog;

//    public AnkiDb getDb() {
/**方法注释*/
- (AnkiDb *)getDb;

//    public Decks getDecks() {
/**方法注释*/
- (Decks *)getDecks;

//    public Media getMedia() {
/**方法注释*/
- (Media *)getMedia;

//    public Models getModels() {
/**方法注释*/
- (Models *)getModels;

//    public boolean validCollection() {
/**方法注释*/
- (BOOL)validCollection;

//    public JSONObject getConf() {
/**方法注释*/
- (NSMutableDictionary *)getConf;

//    public void setConf(JSONObject conf) {
/**方法注释*/
- (void)setConfWithconf:(NSMutableDictionary *)conf;

//    public long getScm() {
/**方法注释*/
- (NSInteger)getScm;

//    public void setScm(long scm) {
/**方法注释*/
- (void)setScmWithscm:(NSInteger)scm;

//    public boolean getServer() {
/**方法注释*/
- (BOOL)getServer;

//    public void setLs(long ls) {
/**方法注释*/
- (void)setLsWithls:(NSInteger)ls;

//    public long getLs() {
/**方法注释*/
- (NSInteger)getLs;

//    public void setUsnAfterSync(int usn) {
/**方法注释*/
- (void)setUsnAfterSyncWithusn:(NSInteger)usn;

//    public long getMod() {
/**方法注释*/
- (NSInteger)getMod;

//    public int getUsnForSync() {
/**方法注释*/
- (NSInteger)getUsnForSync;

//    public Tags getTags() {
/**方法注释*/
- (Tags *)getTags;

//    public long getCrt() {
/**方法注释*/
- (NSInteger)getCrt;

//    public void setCrt(long crt) {
/**方法注释*/
- (void)setCrtWithcrt:(NSInteger)crt;

//    public Sched getSched() {
/**方法注释*/
- (Sched *)getSched;

//    public String getPath() {
/**方法注释*/
- (NSString *)getPath;

//    public void setServer(boolean server) {
/**方法注释*/
- (void)setServerWithserver:(BOOL)server;

//    public boolean getDirty() {
/**方法注释*/
- (BOOL)getDirty;





@end
