#import "XCollection.h"

#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"


#import "Utils.h"
#import "UIUtils.h"
#import "NSMutableDictionary+hanzi.h"
#import "FMDB.h"


@implementation XCollection

//
//    private static final int UNDO_SIZE_MAX = 20;

//构造函数，返回类对象；
//    public Collection(AnkiDb db, String path) {
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path
{
//        this(db, path, false);

	return nil;
}
//
//    public Collection(AnkiDb db, String path, boolean server) {
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path server:(BOOL)server
{
//        this(db, path, false, false);

	return nil;
}
//
//    public Collection(AnkiDb db, String path, boolean server, boolean log) {
- (instancetype)initWithdb:(AnkiDb *)db path:(NSString *)path server:(BOOL)server log:(BOOL)log
{
//        mDebugLog = log;
//        mDb = db;
//        mPath = path;
//        _openLog();
//        log(path, VersionUtils.getPkgVersionName());
//        mServer = server;
//        mLastSave = Utils.now();
//        clearUndo();
//        mMedia = new Media(this, server);
//        mModels = new Models(this);
//        mDecks = new Decks(this);
//        mTags = new Tags(this);
//        load();
//        if (mCrt == 0) {
//            mCrt = UIUtils.getDayStart() / 1000;
//        }
//        mStartReps = 0;
//        mStartTime = 0;
//        mSched = new Sched(this);
//        if (!mConf.optBoolean("newBury", false)) {
//            boolean mod = mDb.getMod();
//            mSched.unburyCards();
//            mDb.setMod(mod);
    //        }
    if (self = [super init]) {
        _mDebugLog = log;
        _mDb = db;
        _mPath = path;
        [self _openLog];
        [self logWithargs:path,path,path];
        _mServer = server;
        _mLastSave = [Utils now];
        [self clearUndo];
        _mMedia = [[Media alloc] initWithcol:self server:server];
        _mModels = [[Models alloc] initWithcol:self];
        _mDecks = [[Decks alloc] initWithcol:self];
        _mTags = [[Tags alloc] initWithcol:self];
        [self load];
        if (_mCrt == 0) {
            _mCrt = [UIUtils getDayStart] / 1000;
        }
        _mStartReps = 0;
        _mStartTime = 0;
        _mSched = [[Sched alloc] initWithcol:self];
        
        if([self.mConf setOrGetObject:FALSE forKey:@"newBury"]){
            BOOL mod = [_mDb getMod];
            [_mSched unburyCards];
            [self.mDb setModWithmod:mod];
        }
    }
    return self;
}
//
//    // 获得项目目录下collection.anki2文件，取出collection这个字符串；
//    public String name() {
- (NSString *)xname
{
//        String n = (new File(mPath)).getName().replace(".anki2", "");
//        return n;

	return @"collection";
}
//    加载数据库中的数据；
//    public void load() {
- (void)load
{
//        Cursor cursor = null;
//        try {
//            // Read in deck table columns
//            cursor = mDb.getDatabase().rawQuery(
//                    "SELECT crt, mod, scm, dty, usn, ls, " +
//                    "conf, models, decks, dconf, tags FROM col", null);
//            if (!cursor.moveToFirst()) {
//                return;
//            }
//            mCrt = cursor.getLong(0);
//            mMod = cursor.getLong(1);
//            mScm = cursor.getLong(2);
//            mDty = cursor.getInt(3) == 1; // No longer used
//            mUsn = cursor.getInt(4);
//            mLs = cursor.getLong(5);
//            try {
//                mConf = new JSONObject(cursor.getString(6));
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//            mModels.load(cursor.getString(7));
//            mDecks.load(cursor.getString(8), cursor.getString(9));
//            mTags.load(cursor.getString(10));
//        } finally {
//            if (cursor != null) {
//                cursor.close();
//            }
//        }
    FMResultSet *cursor = nil;
    cursor = [[_mDb getDatabase] executeQuery:@"SELECT crt, mod, scm, dty, usn, ls, conf, models, decks, dconf, tags FROM col"];
    if (![cursor next]) {
        return;
    }
    _mCrt = [cursor longForColumnIndex:0];
    _mMod = [cursor longForColumnIndex:1];
    _mScm = [cursor longForColumnIndex:2];
    _mDty = [cursor intForColumnIndex:3] == 1;
    _mUsn = [cursor intForColumnIndex:4];
    _mLs  = [cursor longForColumnIndex:5];
    
    _mConf = [NSJSONSerialization JSONObjectWithData:[[cursor stringForColumnIndex:6] dataUsingEncoding:NSUTF8StringEncoding]options:NSJSONReadingMutableLeaves error:nil];
    
    [_mModels loadWithjson:[cursor stringForColumnIndex:7]];
    
    [_mDecks loadWithdecks:[cursor stringForColumnIndex:8] dconf:[cursor stringForColumnIndex:9]];
    
    [_mTags loadWithjson: [cursor stringForColumnIndex:10]];
    
}

//    /**
//     * Mark DB modified. DB operations and the deck/tag/model managers do this automatically, so this is only necessary
//     * if you modify properties of this object or the conf dict.
//     */
//    public void setMod() {
- (void)setMod
{
//        mDb.setMod(true);

	
}
//
//
//    public void flush() {
- (void)flush
{
//        flush(0);

	
}
//
//
//    /**
//     * Flush state to DB, updating mod time.
//     */
//    public void flush(long mod) {
- (void)flushWithmod:(NSInteger)mod
{
//        Timber.i("flush - Saving information to DB...");
//        mMod = (mod == 0 ? Utils.intNow(1000) : mod);
//        ContentValues values = new ContentValues();
//        values.put("crt", mCrt);
//        values.put("mod", mMod);
//        values.put("scm", mScm);
//        values.put("dty", mDty ? 1 : 0);
//        values.put("usn", mUsn);
//        values.put("ls", mLs);
//        values.put("conf", Utils.jsonToString(mConf));
//        mDb.update("col", values);

	
}
//
//
//    /**
//     * Flush, commit DB, and take out another write lock.
//     */
//    public synchronized void save() {
- (void)save
{
//        save(null, 0);

	
}
//
//
//    public synchronized void save(long mod) {
- (void)saveWithmod:(NSInteger)mod
{
//        save(null, mod);

	
}
//
//    /**
//     * 写入数据库，这个方法要加上同步锁
//     * @param name
//     * @param mod
//     */
//    public synchronized void save(String name, long mod) {
- (void)saveWithname:(NSString *)name mod:(NSInteger)mod
{
//        // let the managers conditionally flush
//        mModels.flush();
//        mDecks.flush();
//        mTags.flush();
//        // and flush deck + bump mod if db has been changed
//        if (mDb.getMod()) {
//            // 如果mDb修改过
//            flush(mod);
//            mDb.commit();
//            lock();
//            // 设置修改；
//            mDb.setMod(false);
//        }
//        // undoing non review operation is handled differently in ankidroid
////        _markOp(name);
//        mLastSave = Utils.now();

	
}
//
//
//    /** Save if 5 minutes has passed since last save.
//     * 每隔五分钟自动保存一次
//     * */
//    public void autosave() {
- (void)autosave
{
//        if ((Utils.now() - mLastSave) > 300) {
//            save();
//        }

	
}
//
//
//    /** make sure we don't accidentally bump mod time
//     * 锁上，确保我们不能偶然触及磕碰到修改时间；
//     * */
//    public void lock() {
- (void)lock
{
//        // make sure we don't accidentally bump mod time
//        boolean mod = mDb.getMod(); //数据库现在正在修改吗？
//        //Todo_john 这句话什么意思啊！UPDATE col SET mod=mod
//        mDb.execute("UPDATE col SET mod=mod");
//        // 设置col表中的
//        mDb.setMod(mod);

	
}
//
//
//    /**
//     * Disconnect from DB.
//     */
//    public synchronized void close() {
- (void)close
{
//        close(true);

	
}
//
//
//    /**
//     * 断开与数据库的链接
//     * @param save
//     */
//    public synchronized void close(boolean save) {
- (void)closeWithsave:(BOOL)save
{
//        if (mDb != null) {
//            // 取出“newBury”的值，如果没有这个字段，则返回false
//            if (!mConf.optBoolean("newBury", false)) {
//                boolean mod = mDb.getMod();
//                // 取消被搁置的卡片；
//                mSched.unburyCards();
//                // Todo_john mod为什么取出来有设置上呢？啥意思？
//                mDb.setMod(mod);
//            }
//            try {
//                SQLiteDatabase db = getDb().getDatabase();
//                if (save) {
//                    db.beginTransaction();
//                    try {
//                        save();
//                        db.setTransactionSuccessful();
//                    } finally {
//                        db.endTransaction();
//                    }
//                } else {
//                    if (db.inTransaction()) {
//                        db.endTransaction();
//                    }
//                    lock();
//                }
//            } catch (RuntimeException e) {
//                AnkiDroidApp.sendExceptionReport(e, "closeDB");
//            }
//            AnkiDatabaseManager.closeDatabase(mPath);
//            mDb = null;
//            mMedia.close();
//            _closeLog();
//            Timber.i("Collection closed");
//        }

	
}
//
//    // 重新打开数据库
//    public void reopen() {
- (void)reopen
{
//        if (mDb == null) {
//            mDb = AnkiDatabaseManager.getDatabase(mPath);
//            mMedia.connect();
//            _openLog();
//        }

	
}
//
//
//    /** Note: not in libanki.
//     * 标记一个修改过的schema，用于强制同步；
//     * Mark schema modified to force a full sync, but with the confirmation checking function disabled
//     * This is a convenience method which doesn't throw ConfirmModSchemaException
//     */
//    public void modSchemaNoCheck() {
- (void)modSchemaNoCheck
{
//        try {
//            modSchema(false);
//        } catch (ConfirmModSchemaException e) {
//            // This will never be reached as we disable confirmation via the "false" argument
//            throw new RuntimeException(e);
//        }

	
}
//
//    /** Mark schema modified to force a full sync.
//     * 标记一个修改过的schema，用于强制同步；
//     * ConfirmModSchemaException will be thrown if the user needs to be prompted to confirm the action.
//     * If the user chooses to confirm then modSchema(false) should be called, after which the exception can
//     * be safely ignored, and the outer code called again.
//     *
//     * @throws ConfirmModSchemaException */
//    public void modSchema() throws ConfirmModSchemaException {
- (void)modSchema
{
//        modSchema(true);

	
}
//
//    /** Mark schema modified to force a full sync.
//     * 标记一个修改过的schema，用于强制同步；
//     * If check==true and the schema has not already been marked modified then ConfirmModSchemaException will be thrown.
//     * If the user chooses to confirm then modSchema(false) should be called, after which the exception can
//     * be safely ignored, and the outer code called again.
//     *
//     * @param check
//     * @throws ConfirmModSchemaException
//     */
//    public void modSchema(boolean check) throws ConfirmModSchemaException {
- (void)modSchemaWithcheck:(BOOL)check
{
//        if (!schemaChanged()) {
//            if (check) {
//                /* In Android we can't show a dialog which blocks the main UI thread
//                 Therefore we can't wait for the user to confirm if they want to do
//                 a full sync here, and we instead throw an exception asking the outer
//                 code to handle the user's choice */
//                throw new ConfirmModSchemaException();
//            }
//        }
//        mScm = Utils.intNow(1000);
//        setMod();

	
}
//
//
//    /** True if schema changed since last sync.
//     * 返回schema是否改变过，
//     * */
//    public boolean schemaChanged() {
- (BOOL)schemaChanged
{
//        return mScm > mLs;

	return nil;
}
//
//
//    public int usn() {
- (NSInteger)usn
{
//        if (mServer) {
//            return mUsn;
//        } else {
//            return -1;
//        }

	return nil;
}
//
//
//    /** called before a full upload
//     * 全部上传之前要做事情；
//     * */
//    public void beforeUpload() {
- (void)beforeUpload
{
//        String[] tables = new String[] { "notes", "cards", "revlog" };
//        // 首先把这三个表的统一序列号修改成1;
//        for (String t : tables) {
//            mDb.execute("UPDATE " + t + " SET usn=0 WHERE usn=-1");
//        }
//        // we can save space by removing the log of deletions,为了节省空间，我们可以移除那些删除的log记录
//        // Todo_john 这个graves就是用来记录删除的东西的吗？
//        mDb.execute("delete from graves");
//        mUsn += 1;  //统一序列化号递增加一；
//        mModels.beforeUpload();   // 把所有笔记类型的usn设置为0；
//        mTags.beforeUpload();   // 把tags的所有key都设置为0；
//        mDecks.beforeUpload();  // 把所有deck的usn都设置为0，把所有deck对应的conf中的usn也都设置为0
//        modSchemaNoCheck();    // 修改 mScm = Utils.intNow(1000); 修改setMod(true);
//        mLs = mScm;
//        // ensure db is compacted before upload 确保数据库是压实的，
//        mDb.execute("vacuum"); //  VACUUM命令复制主数据库文件到临时数据库并从临时数据库重新载入主数据库
//        mDb.execute("analyze"); // ANALYZE命令令集合关于索引的统计信息并将它们储存在数据库的一个特殊表中，查询优化器可以用该表来制作更好的索引选择。若不给出参数，所有附加数据库中的所有索引被分析
//        close();

	
}
//
//
//    /**
//     * Object creation helpers **************************************************
//     * *********************************************
//     */
//
//    // 给个卡片的id，获取所对应的卡片
//    public Card getCard(long id) {
- (Card *)getCardWithxid:(NSInteger)xid
{
//        return new Card(this, id);

	return nil;
}
//
//    // 给出笔记的id,获取所对应的笔记
//    public Note getNote(long id) {
- (Note *)getNoteWithxid:(NSInteger)xid
{
//        return new Note(this, id);

	return nil;
}
//     * 就此代码，分析；
//     */
//
//    public int nextID(String type) {
- (NSInteger)nextIDWithtype:(NSString *)type
{
//        type = "next" + Character.toUpperCase(type.charAt(0)) + type.substring(1);
//        // type --> "nextPos"
//        int id;
//        try {
//            // 取出col表中conf字段的nextPos属性值；
//            id = mConf.getInt(type);
//        } catch (JSONException e) {
//            id = 1;
//        }
//        try {
//            // 取出col表中conf字段的nextPos属性值；并对此属性值累加1；并返回这个值；
//            mConf.put(type, id + 1);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return id;

	return nil;
}
//
//
//    /**
//     * Rebuild the queue and reload data after DB modified.
//     * 数据库修改后从新建立队列和加载数据；
//     */
//    public void reset() {
- (void)reset
{
//        mSched.reset();

	
}
//
//
//    /**
//     * Deletion logging ********************************************************* **************************************
//     * 登记记录删除的卡片，
//     */
//
//    public void _logRem(long[] ids, int type) {
- (void)_logRemWithids:(NSMutableArray *)ids type:(NSInteger)type
{
//        for (long id : ids) {
//            ContentValues values = new ContentValues();
//            values.put("usn", usn());
//            values.put("oid", id);
//            values.put("type", type);
//            mDb.insert("graves", null, values);
//        }

	
}
//
//
//    /**
//     * Notes ******************************************************************** ***************************
//     */
//    // 返回所有的笔记条数总和；
//    public int noteCount() {
- (NSInteger)noteCount
{
//        return (int) mDb.queryScalar("SELECT count() FROM notes");

	return nil;
}
//
//    /**
//     * Return a new note with the default model from the deck
//     * 返回以个新的笔记，按照默认的笔记类型；
//     * @return The new note
//     */
//    public Note newNote() {
- (Note *)newNote
{
//        return newNote(true);

	return nil;
}
//
//    /**使用当前的笔记模型创建一条新的笔记返回；
//     * Return a new note with the model derived from the deck or the configuration
//     * @param forDeck When true it uses the model specified in the deck (mid), otherwise it uses the model specified in
//     *                the configuration (curModel)
//     * @return The new note
//     */
//    public Note newNote(boolean forDeck) {
- (Note *)newNoteWithforDeck:(BOOL)forDeck
{
//        return newNote(mModels.current(forDeck));

	return nil;
}
//
//    /**
//     * Return a new note with a specific model 使用指定的笔记类型创造出一个新的笔记返回，
//     * @param m The model to use for the new note
//     * @return The new note
//     */
//    public Note newNote(JSONObject m) {
- (Note *)newNoteWithm:(NSMutableDictionary *)m
{
//        return new Note(this, m);

	return nil;
}
//
//
//    /**
//     * Add a note to the collection. Return number of new cards.
//     * 添加一个笔记到牌组集合，返回由此笔记产生的卡片的数量
//     */
//    public int addNote(Note note) {
- (NSInteger)addNoteWithnote:(Note *)note
{
//        // check we have card models available, then save
//        ArrayList<JSONObject> cms = findTemplates(note);
//        if (cms.size() == 0) {
//            return 0;
//        }
//        note.flush();
//        // deck conf governs which of these are used
//        // Todo_john 获取nextPos的值是1， 获取它有什么意义呢????
//        int due = nextID("pos");
//        // add cards
//        int ncards = 0;
//        for (JSONObject template : cms) {
//            _newCard(note, template, due);
//            ncards += 1;
//        }
//        return ncards;

	return nil;
}
//
//
//    public void remNotes(long[] ids) {
- (void)remNotesWithids:(NSMutableArray *)ids
{
//        ArrayList<Long> list = mDb
//                .queryColumn(Long.class, "SELECT id FROM cards WHERE nid IN " + Utils.ids2str(ids), 0);
//        long[] cids = new long[list.size()];
//        int i = 0;
//        for (long l : list) {
//            cids[i++] = l;
//        }
//        remCards(cids);

	
}
//
//
//    /**
//     * Bulk delete facts by ID. Don't call this directly.
//     */
//    public void _remNotes(long[] ids) {
- (void)_remNotesWithids:(NSMutableArray *)ids
{
//        if (ids.length == 0) {
//            return;
//        }
//        String strids = Utils.ids2str(ids);
//        // we need to log these independently of cards, as one side may have
//        // more card templates
//        _logRem(ids, Consts.REM_NOTE);
//        mDb.execute("DELETE FROM notes WHERE id IN " + strids);


}
//
//
//    /**
//     * Card creation ************************************************************ ***********************************
//     */
//
//    /**
//     * @return (active), non-empty templates.
//     */
//    private ArrayList<JSONObject> findTemplates(Note note) {
- (NSMutableArray *)findTemplatesWithnote:(Note *)note
{
//        JSONObject model = note.model();
//        ArrayList<Integer> avail = mModels.availOrds(model, Utils.joinFields(note.getFields()));
//        return _tmplsFromOrds(model, avail);

	return nil;
}
//
//
//    private ArrayList<JSONObject> _tmplsFromOrds(JSONObject model, ArrayList<Integer> avail) {
- (NSMutableArray *)_tmplsFromOrdsWithmodel:(NSMutableDictionary *)model avail:(NSMutableArray *)avail
{
//        ArrayList<JSONObject> ok = new ArrayList<JSONObject>();
//        JSONArray tmpls;
//        try {
//            if (model.getInt("type") == Consts.MODEL_STD) {
//                tmpls = model.getJSONArray("tmpls");
//                for (int i = 0; i < tmpls.length(); i++) {
//                    JSONObject t = tmpls.getJSONObject(i);
//                    if (avail.contains(t.getInt("ord"))) {
//                        ok.add(t);
//                    }
//                }
//            } else {
//                // cloze - generate temporary templates from first
//                for (int ord : avail) {
//                    JSONObject t = new JSONObject(model.getJSONArray("tmpls").getString(0));
//                    t.put("ord", ord);
//                    ok.add(t);
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return ok;

	return nil;
}
//
//
//    /**
//     * Generate cards for non-empty templates, return ids to remove.
//     * 对传入的笔记集合，重新生成他们的卡片，返回需要删除的卡片的id集合；
//     */
//	public ArrayList<Long> genCards(List<Long> nids) {
- (NSMutableArray *)genCardsWithnids:(NSMutableArray *)nids
{
//	    return genCards(Utils.arrayList2array(nids));

	return nil;
}
//
//
//	/**
//	 * Return cards of a note, without saving them
//     * 返回一个笔记的卡片，但是不保存他们，只是用来预览；
//	 * @param note The note whose cards are going to be previewed
//     * @param type 0 - when previewing in add dialog, only non-empty 来自添加对话框的预览
//     *             1 - when previewing edit, only existing 来自编辑状态的预览
//     *             2 - when previewing in models dialog, all templates 来自笔记类型对话框的预览；
//     * @return list of cards
//	 */
//	public List<Card> previewCards(Note note, int type) {
- (NSMutableArray *)previewCardsWithnote:(Note *)note type:(NSInteger)type
{
//	    ArrayList<JSONObject> cms = null;
//	    if (type == 0) {
//	        cms = findTemplates(note);
//	    } else if (type == 1) {
//	        cms = new ArrayList<JSONObject>();
//	        for (Card c : note.cards()) {
//	            cms.add(c.template());
//	        }
//	    } else {
//	        cms = new ArrayList<JSONObject>();
//	        try {
//                JSONArray ja = note.model().getJSONArray("tmpls");
//                for (int i = 0; i < ja.length(); ++i) {
//                    cms.add(ja.getJSONObject(i));
//                }
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//	    }
//	    if (cms.isEmpty()) {
//	        return new ArrayList<Card>();
//	    }
//	    List<Card> cards = new ArrayList<Card>();
//	    for (JSONObject template : cms) {
//	        cards.add(_newCard(note, template, 1, false));
//	    }
//	    return cards;

	return nil;
}
//    public List<Card> previewCards(Note note) {
- (NSMutableArray *)previewCardsWithnote:(Note *)note
{
//        return previewCards(note, 0);

	return nil;
}
//
//
//    /**
//     * 创建一个新的卡片返回，
//     * @param note
//     * @param template
//     * @param due 它来自于conf里的nextPos属性的值；
//     * @return
//     */
//    private Card _newCard(Note note, JSONObject template, int due) {
- (Card *)_newCardWithnote:(Note *)note template:(NSMutableDictionary *)template due:(NSInteger)due
{
//        return _newCard(note, template, due, true);

	return nil;
}
//
//    /**
//     * 创建一个新的卡片返回，
//     * @param note
//     * @param template
//     * @param due 它来自于conf里的nextPos属性的值；
//     * @return
//     */
//    private Card _newCard(Note note, JSONObject template, int due, boolean flush) {
- (Card *)_newCardWithnote:(Note *)note template:(NSMutableDictionary *)template due:(NSInteger)due flush:(BOOL)flush
{
//        Card card = new Card(this);
//        card.setNid(note.getId());
//        try {
//            card.setOrd(template.getInt("ord"));
//        } catch (JSONException e) {
//            new RuntimeException(e);
//        }
//        long did;
//        try {
//            did = template.getLong("did");
//        } catch (JSONException e) {
//            did = 0;
//        }
//        try {
//            card.setDid(did != 0 ? did : note.model().getLong("did"));
//            // if invalid did, use default instead
//            JSONObject deck = mDecks.get(card.getDid());
//            if (deck.getInt("dyn") == 1) {
//            	// must not be a filtered deck
//            	card.setDid(1);
//            } else {
//                card.setDid(deck.getLong("id"));
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        card.setDue(_dueForDid(card.getDid(), due));
//        if (flush) {
//            card.flush();
//        }
//        return card;

	return nil;
}
//
//    // 为这个牌组的新卡设置due的时间；这里的due来自于col中的conf字段的nextPos属性值，一般是1；
//    // 返回一个1到1000的随机数；
//    public int _dueForDid(long did, int due) {
- (NSInteger)_dueForDidWithdid:(NSInteger)did due:(NSInteger)due
{
//        // 每个牌组都有一个他学习的配置文件，但是通常我们都没有配置此文件，因此所有牌组都通用一个学习的配置文件；
//        JSONObject conf = mDecks.confForDid(did);
//        // in order due?
//        try {
//            if (conf.getJSONObject("new").getInt("order") == Consts.NEW_CARDS_DUE) {
//                // 如果是按照创建卡片的顺序则，直接返回due即可；
//                return due;
//            } else {
//                // random mode; seed with note ts so all cards of this note get
//                // the same random number
//                Random r = new Random();
//                // setSeed设置种子，设置完种子后，返回的随机数就是0到种子due之间的数字；
//                r.setSeed(due);
//                return r.nextInt(Math.max(due, 1000) - 1) + 1;
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//
//    /**
//     * Cards ******************************************************************** ***************************
//     */
//
//    public boolean isEmpty() {
- (BOOL)isEmpty
{
//        // SELECT 1 FROM cards用来查询表中是否有记录；
//        return mDb.queryScalar("SELECT 1 FROM cards LIMIT 1") == 0;

	return nil;
}
//
//    // 返回cards表中卡片的总数量；
//    public int cardCount() {
- (NSInteger)cardCount
{
//        return mDb.queryScalar("SELECT count() FROM cards");

	return nil;
}
//
//
//    // NOT IN LIBANKI //
//    public int cardCount(Long[] ls) {
- (NSInteger)cardCountWithls:(NSMutableArray *)ls
{
//        return mDb.queryScalar("SELECT count() FROM cards WHERE did IN " + Utils.ids2str(ls));

	return nil;
}
//
//
//    /**
//     * Bulk delete cards by ID.
//     * 批量删除卡片
//     */
//    public void remCards(long[] ids) {
- (void)remCardsWithids:(NSMutableArray *)ids
{
//    	remCards(ids, true);

	
}
//    // 批量删除卡片
//    public void remCards(long[] ids, boolean notes) {
- (void)remCardsWithids:(NSMutableArray *)ids notes:(BOOL)notes
{
//        if (ids.length == 0) {
//            return;
//        }
//        String sids = Utils.ids2str(ids);
//        long[] nids = Utils
//                .arrayList2array(mDb.queryColumn(Long.class, "SELECT nid FROM cards WHERE id IN " + sids, 0));
//        // remove cards
//        _logRem(ids, Consts.REM_CARD);
//        mDb.execute("DELETE FROM cards WHERE id IN " + sids);
//        // then notes 是否将没有卡片的笔记也一同删除了，
//        if (!notes) {
//        	return;
//        }
//        // 找出那些没有卡片的笔记，一并删除；
//        nids = Utils
//                .arrayList2array(mDb.queryColumn(Long.class, "SELECT id FROM notes WHERE id IN " + Utils.ids2str(nids)
//                        + " AND id NOT IN (SELECT nid FROM cards)", 0));
//        _remNotes(nids);

	
}
//
//    // 倾入，倒入，完全加载卡片；
//    public List<Long> emptyCids() {
- (NSMutableArray *)emptyCids
{
//        List<Long> rem = new ArrayList<>();
//        for (JSONObject m : getModels().all()) {
//            // nids(m)返回所有用到此笔记类型的笔记；
//            // 所有的笔记都依次生成卡片并加入rem集合中，返回；
//            rem.addAll(genCards(getModels().nids(m)));
//        }
//        return rem;

	return nil;
}
//
//    // 加载所有卡片的报告；
//    // Todo_john 这个方法不很理解，用途是什么呢？
//    public String emptyCardReport(List<Long> cids) {
- (NSString *)emptyCardReportWithcids:(NSMutableArray *)cids
{
//        StringBuilder rep = new StringBuilder();
//        Cursor cur = null;
//        try {
//            cur = mDb.getDatabase().rawQuery("select group_concat(ord+1), count(), flds from cards c, notes n "
//                                           + "where c.nid = n.id and c.id in " + Utils.ids2str(cids) + " group by nid", null);
//            while (cur.moveToNext()) {
//                String ords = cur.getString(0);
//                int cnt = cur.getInt(1);
//                String flds = cur.getString(2);
//                rep.append(String.format("Empty card numbers: %s\nFields: %s\n\n", ords, flds.replace("\u001F", " / ")));
//            }
//        } finally {
//            if (cur != null && !cur.isClosed()) {
//                cur.close();
//            }
//        }
//        return rep.toString();

	return nil;
}
//
//    /**
//     * Field checksums and sorting fields ***************************************
//     * 有给定的nids，去notes表中查询出相关note的，id，mid,以及flds信息，并写入一个集合返回；
//     */
//
//    private ArrayList<Object[]> _fieldData(String snids) {
- (NSMutableArray *)_fieldDataWithsnids:(NSString *)snids
{
//        ArrayList<Object[]> result = new ArrayList<Object[]>();
//        Cursor cur = null;
//        try {
//            cur = mDb.getDatabase().rawQuery("SELECT id, mid, flds FROM notes WHERE id IN " + snids, null);
//            while (cur.moveToNext()) {
//                result.add(new Object[]{cur.getLong(0), cur.getLong(1), cur.getString(2)});
//            }
//        } finally {
//            if (cur != null && !cur.isClosed()) {
//                cur.close();
//            }
//        }
//        return result;

	return nil;
}
//
//
//    /** Update field checksums and sort cache, after find&replace, etc.
//     * 更新数据库笔记表中的内容，特别是更新排序字段，和csum字段，此字段由flds第一个值得哈希值而来，可以避免笔记重复；
//     * */
//    public void updateFieldCache(long[] nids) {
- (void)updateFieldCacheWithnids:(NSMutableArray *)nids
{
//        String snids = Utils.ids2str(nids);
//        ArrayList<Object[]> r = new ArrayList<Object[]>();
//        // _fieldData 方法从给定的nids，去notes表中查询出相关note的，id，mid,以及flds信息，并写入一个集合返回；
//        for (Object[] o : _fieldData(snids)) {
//            String[] fields = Utils.splitFields((String) o[2]);
//            JSONObject model = mModels.get((Long) o[1]);
//            if (model == null) {
//                // note point to invalid model
//                continue;
//            }
//            // Utils.stripHTML()的作用是： 剥掉html标签，只留下输入字符串纯文本信息
//            // Utils.fieldChecksum(fields[0])这个方法作用是，用于字段检验，它将一个字符串变成哈希值，但只取前8位，o[0]是笔记的id,
//            // o[0]是当前笔记的id,
//            r.add(new Object[] { Utils.stripHTML(fields[mModels.sortIdx(model)]), Utils.fieldChecksum(fields[0]), o[0] });
//        }
//        // apply, relying on calling code to bump usn+mod
//        // 更新数据库notes表中的sfld字段和csum字段，csum字段用来避免note的重复；
//        mDb.executeMany("UPDATE notes SET sfld=?, csum=? WHERE id=?", r);

	
}
//
//
//    /**
//     * Q/A generation *********************************************************** ************************************
//     */
//
//    public ArrayList<HashMap<String, String>> renderQA() {
- (NSMutableArray *)renderQA
{
//        return renderQA(null, "card");

	return nil;
}
//
//    // 渲染问题和答案；
//    public ArrayList<HashMap<String, String>> renderQA(int[] ids, String type) {
- (NSMutableArray *)renderQAWithids:(NSMutableArray *)ids type:(NSString *)type
{
//        String where;
//        if (type.equals("card")) {
//            where = "AND c.id IN " + Utils.ids2str(ids);
//        } else if (type.equals("fact")) {
//            where = "AND f.id IN " + Utils.ids2str(ids);
//        } else if (type.equals("model")) {
//            where = "AND m.id IN " + Utils.ids2str(ids);
//        } else if (type.equals("all")) {
//            where = "";
//        } else {
//            throw new RuntimeException();
//        }
//        ArrayList<HashMap<String, String>> result = new ArrayList<HashMap<String, String>>();
//        for (Object[] row : _qaData(where)) {
//            result.add(_renderQA(row));
//        }
//        return result;

	return nil;
}
//
//
//    /**
//     * Returns hash of id, question, answer.
//     * 返回
//     */
//    public HashMap<String, String> _renderQA(Object[] data) {
- (NSMutableDictionary *)_renderQAWithdata:(NSMutableArray *)data
{
//        return _renderQA(data, null, null);

	return nil;
}
//
//    /**
//     * 返回// 最终d中保存三个元素，它是个字典：具体内容：
//     * "q"->"今天星期几啊"
//     * "a"->"今天星期几呀\n\n<hr id=answer>\n\n星期三吧"
//     * "id"->"41276839263"
//     * @param data is [cid, nid, mid, did, ord, tags, flds] 注意，这里的ord是笔记类型中的卡片模板的索引号，
//     * @param qfmt 格式化的问题字符串
//     * @param afmt 格式化的答案字符串；
//     * @return
//     */
//    public HashMap<String, String> _renderQA(Object[] data, String qfmt, String afmt) {
- (NSMutableDictionary *)_renderQAWithdata:(NSMutableArray *)data qfmt:(NSString *)qfmt afmt:(NSString *)afmt
{
//        // data is [cid, nid, mid, did, ord, tags, flds]
//        // unpack fields and create dict，解包flds，生成字段对应值的数组flist
//        String[] flist = Utils.splitFields((String) data[6]);
//        // 这个集合fields将记录着，所有的字段名，和这个字段名对应的值；
//        Map<String, String> fields = new HashMap<String, String>();
//        // 获取笔记类型的json对象；model
//        JSONObject model = mModels.get((Long) data[2]);
//        /** 则返回的map集合的第一个元素就是下面的样式：
//         *  { “正面” {0， {name:“正面”， sticky:false, rtl:false, ord:0, font:"Arial", size:20}}}
//         *  { “背面” {1， {name:“背面”， sticky:false, rtl:false, ord:1, font:"Arial", size:20}}}
//         * */
//        Map<String, Pair<Integer, JSONObject>> fmap = mModels.fieldMap(model);
//        // 为fields字段集合中的每个元素遍历赋值；
//        for (String name : fmap.keySet()) {
//            fields.put(name, flist[fmap.get(name).first]);
//        }
//        try {
//            // 对于一个笔记，根据笔记类型中的卡片模板类型可以生成多张卡片，
//            // 生成的卡片序号定义为，卡片模板类型的索引号加1；
//            int cardNum = ((Integer) data[4]) + 1;
//            // 向字段集合中添加Tags 元素；
//            fields.put("Tags", ((String) data[5]).trim());
//            // 向字段集合中添加类型元素，字段集合的类型，就是所在的笔记类型的名字；
//            fields.put("Type", (String) model.get("name"));
//            // 为这个字段集合，添加牌组属性，即这个记录属于哪个牌组的；
//            fields.put("Deck", mDecks.name((Long) data[3]));
//            // split参数中的-1，意思是；那么模式将被应用尽可能多的次数，而且数组可以是任何长度。
//            // 即，此代码将会将当前的牌组名的每一级别名称分开形成以个数组；
//            String[] parents = fields.get("Deck").split("::", -1);
//            // 为这个字段集合，添加子牌组属性，并为其赋值，
//            fields.put("Subdeck", parents[parents.length-1]);
//            // 获取这张卡片将对应的卡片模板；
//            JSONObject template;
//            if (model.getInt("type") == Consts.MODEL_STD) {
//                // 如果是笔记类型的类别是标准版的，则从笔记类型中获取相应的卡片模板；
//                template = model.getJSONArray("tmpls").getJSONObject((Integer) data[4]);
//            } else {
//                // 如果不是标准版的，那就是填空题版的，取出笔记类型中的卡片模板的第一个模板，即可；
//                template = model.getJSONArray("tmpls").getJSONObject(0);
//            }
//            // 字段集合中添加，一个Card的属性，它将记录着卡片用到的卡片模板的名字；
//            fields.put("Card", template.getString("name"));
//            // 把cardNum进行美国的本地化，然后输出前缀加字符c，生成字符串，c1,它将作为一个属性名
//            // 用来记录该卡片已经生成过；
//            fields.put(String.format(Locale.US, "c%d", cardNum), "1");
//            // render q & a 渲染问题和答案
//            HashMap<String, String> d = new HashMap<String, String>();
//            // data is [cid, nid, mid, did, ord, tags, flds]
//            // 获取卡片的id，并将其放入字典
//            d.put("id", Long.toString((Long) data[0]));
//            // 判断格式化过的问题，即形参qfmt字符串是否为空？如果为空，则，从卡片模板中获取qfmt,否则用形参提供的格式化过的问题；
//            // 判断格式化过的答案，即形参afmt字符串是否为空？如果为空，怎，从卡片模板中获取afmt,否则用形参提供的格式化过的答案；
//            qfmt = TextUtils.isEmpty(qfmt) ? template.getString("qfmt") : qfmt;
//            afmt = TextUtils.isEmpty(afmt) ? template.getString("afmt") : afmt;
//            // qfmt : "{{正面}}"
//            // afmt : "{{FrontSide}}\n\n<hr id=answer>\n\n{{背面}}"
//            // 创建一个配对对象数组；并且遍历这个配对数组；
//            for (Pair<String, String> p : new Pair[]{new Pair<String, String>("q", qfmt), new Pair<String, String>("a", afmt)}) {
//                String type = p.first;
//                String format = p.second;
//                if (type.equals("q")) {
//                    format = fClozePatternQ.matcher(format).replaceAll(String.format(Locale.US, "{{$1cq-%d:", cardNum));
//                    format = fClozeTagStart.matcher(format).replaceAll(String.format(Locale.US, "<%%cq:%d:", cardNum));
//                } else {
//                    format = fClozePatternA.matcher(format).replaceAll(String.format(Locale.US, "{{$1ca-%d:", cardNum));
//                    format = fClozeTagStart.matcher(format).replaceAll(String.format(Locale.US, "<%%ca:%d:", cardNum));
//                    // the following line differs from libanki // TODO: why?
//                    fields.put("FrontSide", d.get("q")); // fields.put("FrontSide", mMedia.stripAudio(d.get("q")));
//                }
//                fields = (Map<String, String>) Hooks.runFilter("mungeFields", fields, model, data, this);
//                // Todo_john 这里的Hooks与render（）还不明白，搁置，以后再细究吧！
//                String html = new Template(format, fields).render();
//                d.put(type, (String) Hooks.runFilter("mungeQA", html, type, fields, model, data, this));
//                // empty cloze?
//                if (type.equals("q") && model.getInt("type") == Consts.MODEL_CLOZE) {
//                    if (getModels()._availClozeOrds(model, (String) data[6], false).size() == 0) {
//                        String link = String.format("<a href=%s#cloze>%s</a>", Consts.HELP_SITE, "help");
//                        d.put("q", String.format("Please edit this note and add some cloze deletions. (%s)", link));
//                    }
//                }
//            }
//            // 最终d中保存三个元素，它是个字典：具体内容：
//            // "q"->"今天星期几啊"
//            // "a"->"今天星期几呀\n\n<hr id=answer>\n\n星期三吧"
//            // "id"->"41276839263"
//            return d;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);

	return nil;
}
//
//
//    /**
//     * Return [cid, nid, mid, did, ord, tags, flds] db query
//     */
//    public ArrayList<Object[]> _qaData() {
- (NSMutableArray *)_qaData
{
//        return _qaData("");

	return nil;
}
//
//    // 返回一个集合，集合中每个元素的内容为：cid, nid, mid, did, ord-template, tags, flds,
//    public ArrayList<Object[]> _qaData(String where) {
- (NSMutableArray *)_qaDataWithwhere:(NSString *)where
{
//        ArrayList<Object[]> data = new ArrayList<Object[]>();
//        Cursor cur = null;
//        try {
//            cur = mDb.getDatabase().rawQuery(
//                    "SELECT c.id, n.id, n.mid, c.did, c.ord, "
//                            + "n.tags, n.flds FROM cards c, notes n WHERE c.nid == n.id " + where, null);
//            while (cur.moveToNext()) {
//                // data的内容即为： cid, nid, mid, did, ord-template, tags, flds,
//                data.add(new Object[] { cur.getLong(0), cur.getLong(1), cur.getLong(2), cur.getLong(3), cur.getInt(4),
//                        cur.getString(5), cur.getString(6) });
//            }
//        } finally {
//            if (cur != null && !cur.isClosed()) {
//                cur.close();
//            }

	return nil;
}
//
//
//    /**
//     * Finding cards ************************************************************ ***********************************
//     */
//
//    /** Return a list of card ids
//     * 搜索，返回含有search字符串的卡片集合；
//     * */
//    public List<Long> findCards(String search) {
- (NSMutableArray *)findCardsWithsearch:(NSString *)search
{
//        return new Finder(this).findCards(search, null);

	return nil;
}
//
//
//    /** Return a list of card ids 搜索，返回含有search字符串的卡片集合；*/
//    public List<Long> findCards(String search, String order) {
- (NSMutableArray *)findCardsWithsearch:(NSString *)search order:(NSString *)order
{
//        return new Finder(this).findCards(search, order);

	return nil;
}
//
//
//    public ArrayList<HashMap<String, String>> findCardsForCardBrowser(String search, boolean order, HashMap<String, String> deckNames) {
- (NSMutableArray *)findCardsForCardBrowserWithsearch:(NSString *)search order:(BOOL)order deckNames:(NSMutableDictionary *)deckNames
{
//        return new Finder(this).findCardsForCardBrowser(search, order, deckNames);

	return nil;
}
//
//
//    /** Return a list of note ids */
//    public List<Long> findNotes(String query) {
- (NSMutableArray *)findNotesWithquery:(NSString *)query
{
//        return new Finder(this).findNotes(query);

	return nil;
}
//
//
//    public int findReplace(List<Long> nids, String src, String dst) {
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst
{
//        return Finder.findReplace(this, nids, src, dst);

	return nil;
}
//
//
//    public int findReplace(List<Long> nids, String src, String dst, boolean regex) {
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex
{
//        return Finder.findReplace(this, nids, src, dst, regex);

	return nil;
}
//
//
//    public int findReplace(List<Long> nids, String src, String dst, String field) {
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst field:(NSString *)field
{
//        return Finder.findReplace(this, nids, src, dst, field);

	return nil;
}
//
//
//    public int findReplace(List<Long> nids, String src, String dst, boolean regex, String field, boolean fold) {
- (NSInteger)findReplaceWithnids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex field:(NSString *)field fold:(BOOL)fold
{
//        return Finder.findReplace(this, nids, src, dst, regex, field, fold);

	return nil;
}
//
//
//    public List<Pair<String, List<Long>>> findDupes(String fieldName) {
- (NSMutableArray *)findDupesWithfieldName:(NSString *)fieldName
{
//        return Finder.findDupes(this, fieldName, "");

	return nil;
}
//
//
//    public List<Pair<String, List<Long>>> findDupes(String fieldName, String search) {
- (NSMutableArray *)findDupesWithfieldName:(NSString *)fieldName search:(NSString *)search
{
//        return Finder.findDupes(this, fieldName, search);

	return nil;
}
//
//
//    /**
//     * Stats ******************************************************************** ***************************
//     */
//
//    // cardstats
//    // stats
//
//    /**
//     * Timeboxing *************************************************************** ********************************
//     */
//
//    public void setTimeLimit(long seconds) {
- (void)setTimeLimitWithseconds:(NSInteger)seconds
{
//        try {
//            mConf.put("timeLim", seconds);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//
//    public long getTimeLimit() {
- (NSInteger)getTimeLimit
{
//        long timebox = 0;
//        try {
//            timebox = mConf.getLong("timeLim");
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return timebox;

	return nil;
}
//
//
//    public void startTimebox() {
- (void)startTimebox
{
//        mStartTime = Utils.now();
//        // Todo_john 这里的getReps()什么作用呢？
//        mStartReps = mSched.getReps();

	
}
//
//
//    /* Return (elapsedTime, reps) if timebox reached, or null. */
//    public Long[] timeboxReached() {
- (NSMutableArray *)timeboxReached
{
//        try {
//            if (mConf.getLong("timeLim") == 0) {
//                // timeboxing disabled
//                return null;
//            }
//            double elapsed = Utils.now() - mStartTime;
//            if (elapsed > mConf.getLong("timeLim")) {
//                // Todo_john 这里的getReps()什么作用呢？
//                return new Long[] { mConf.getLong("timeLim"), (long) (mSched.getReps() - mStartReps) };
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return null;

	return nil;
}
//
//
//    /**
//     * Undo ********************************************************************* **************************
//     */
//
//    /**
//     * [type, undoName, data] type 1 = review; type 2 =
//     */
//    public void clearUndo() {
- (void)clearUndo
{
//        mUndo = new LinkedList<Object[]>();
    _mUndo = [NSMutableArray array];

}
//
//
//    /** Undo menu item name, or "" if undo unavailable.
//     * 返回undo名字，如果undo不可用，则这个名字为空“”，有了undo的名字，就系统就知道要撤销那个窗口的动作，
//     * */
//    public String undoName(Resources res) {
- (NSString *)undoNameWithres:(NSObject *)res
{
//        if (mUndo.size() > 0) {
//            int undoType = (Integer) mUndo.getLast()[0];
//            if (undoType >= 0 && undoType < fUndoNames.length) {
//                return res.getString(fUndoNames[undoType]);
//            }
//        }
//        return "";

	return nil;
}
//
//
//    public boolean undoAvailable() {
- (BOOL)undoAvailable
{
//        return mUndo.size() > 0;

	return nil;
}
//
//    // 执行撤销操作，
//    public long undo() {
- (NSInteger)undo
{
//        // 获取要撤销的操作数据；
//    	Object[] data = mUndo.removeLast();
//    	switch ((Integer)data[0]) {
//    	case UNDO_REVIEW: // 撤销上一次的复习卡片操作，
//            // 获取上一次的卡片，
//            Card c = (Card) data[1];
//            // remove leech tag if it didn't have it before 删除它的水蛭标签
//            Boolean wasLeech = (Boolean) data[2];
//            if (!wasLeech && c.note().hasTag("leech")) {
//                c.note().delTag("leech");
//                c.note().flush();
//            }
//            // write old data
//            c.flush(false);
//            // and delete revlog entry 删除log记录
//            long last = mDb.queryLongScalar("SELECT id FROM revlog WHERE cid = " + c.getId() + " ORDER BY id DESC LIMIT 1");
//            mDb.execute("DELETE FROM revlog WHERE id = " + last);
//            // restore any siblings 恢复任何一个兄弟姐妹，它的兄弟姐妹卡片被搁置的，现在都取消搁置，
//            mDb.execute("update cards set queue=type,mod=?,usn=? where queue=-2 and nid=?",
//                    new Object[]{ Utils.intNow(), usn(), c.getNid() });
//            // and finally, update daily count 当前的卡片的队列是3吗？，如果不是就赋值为1，变成learning队列；
//            int n = c.getQueue() == 3 ? 1 : c.getQueue();
//            String type = (new String[] { "new", "lrn", "rev" })[n];
//            // 把整张卡所在的牌组，以及这个牌组的所有父牌组的xxxxToday的第二个元素的值都累加1；
//            mSched._updateStats(c, type, -1);
//            // Todo_john 这里不是很懂啊，
//            mSched.setReps(mSched.getReps() - 1);
//            return c.getId();
//
//    	case UNDO_BURY_NOTE: // 撤销上一次的搁置笔记操作
//    		for (Card cc : (ArrayList<Card>)data[2]) {
//    			cc.flush(false);
//    		}
//    		return (Long) data[3];
//
//    	case UNDO_SUSPEND_CARD: // 撤销上一次暂停卡片操作
//    		Card suspendedCard = (Card)data[1];
//    		suspendedCard.flush(false);
//    		return suspendedCard.getId();
//
//    	case UNDO_SUSPEND_NOTE: // 撤销上一次的暂停笔记操作
//    		for (Card ccc : (ArrayList<Card>) data[1]) {
//    			ccc.flush(false);
//    		}
//    		return (Long) data[2];
//
//    	case UNDO_DELETE_NOTE: // 撤销上一次的删除笔记操作
//    		ArrayList<Long> ids = new ArrayList<Long>();
//    		Note note2 = (Note)data[1];
//    		note2.flush(note2.getMod(), false);
//    		ids.add(note2.getId());
//        		for (Card c4 : (ArrayList<Card>) data[2]) {
//        			c4.flush(false);
//    			ids.add(c4.getId());
//        		}
//    		mDb.execute("DELETE FROM graves WHERE oid IN " + Utils.ids2str(Utils.arrayList2array(ids)));
//    		return (Long) data[3];
//
//        case UNDO_BURY_CARD: // 撤销上一次的搁置卡片操作
//            for (Card cc : (ArrayList<Card>)data[2]) {
//                cc.flush(false);
//            }
//            return (Long) data[3];
//        default:
//        	return 0;
//    	}

	return nil;
}
//
//    // 标记undo
//    public void markUndo(int type, Object[] o) {
- (void)markUndoWithtype:(NSInteger)type o:(NSMutableArray *)o
{
//    	switch(type) {
//    	case UNDO_REVIEW:
//    		mUndo.add(new Object[]{type, ((Card)o[0]).clone(), o[1]});
//    		break;
//        case UNDO_BURY_NOTE:
//            mUndo.add(new Object[]{type, o[0], o[1], o[2]});
//            break;
//        case UNDO_SUSPEND_CARD:
//            mUndo.add(new Object[]{type, ((Card)o[0]).clone()});
//            break;
//        case UNDO_SUSPEND_NOTE:
//            mUndo.add(new Object[]{type, o[0], o[1]});
//            break;
//    	case UNDO_DELETE_NOTE:
//    		mUndo.add(new Object[]{type, o[0], o[1], o[2]});
//    		break;
//        case UNDO_BURY_CARD:
//            mUndo.add(new Object[]{type, o[0], o[1], o[2]});
//            break;
//    	}
//    	while (mUndo.size() > UNDO_SIZE_MAX) {
//    		mUndo.removeFirst();
//    	}

	
}
//
//    //todo_john 这里的markReview与对卡片进行标记不同，没回答完一个卡片，系统都会mark一次，这是对学习过的卡片进行记录，用于撤销操作，
//    public void markReview(Card card) {
- (void)markReviewWithcard:(Card *)card
{
//        markUndo(UNDO_REVIEW, new Object[]{card, card.note().hasTag("leech")});

	
}
//
//    /**
//     * DB maintenance *********************************************************** ************************************
//     */
//
//
//    /*
//     * Basic integrity check for syncing. True if ok.
//     * 基本的完整检查，为同步；
//     */
//    public boolean basicCheck() {
- (BOOL)basicCheck
{
//        // cards without notes 是否存在那种没有笔记记录的卡片；
//        if (mDb.queryScalar("select 1 from cards where nid not in (select id from notes) limit 1") > 0) {
//            return false;
//        }
//        // 检查一下有没有坏笔记，即所有卡片中都没有用到做的笔记；
//        boolean badNotes = mDb.queryScalar(String.format(Locale.US,
//                // select distinct nid from cards作用是过滤掉结果集中的重复值，
//                "select 1 from notes where id not in (select distinct nid from cards) " +
//                "or mid not in %s limit 1", Utils.ids2str(mModels.ids()))) > 0;
//        // notes without cards or models
//        if (badNotes) {
//            return false;
//        }
//        try {
//            // invalid ords
//            for (JSONObject m : mModels.all()) {
//                // ignore clozes 忽略填空题类型的笔记类型；
//                if (m.getInt("type") != Consts.MODEL_STD) {
//                    continue;
//                }
//                // Make a list of valid ords for this model
//                JSONArray tmpls = m.getJSONArray("tmpls");
//                int[] ords = new int[tmpls.length()];
//                for (int t = 0; t < tmpls.length(); t++) {
//                    ords[t] = tmpls.getJSONObject(t).getInt("ord");
//                }
//
//                // 检验当前的ords中包含的卡片模板是否都被用过，
//                boolean badOrd = mDb.queryScalar(String.format(Locale.US,
//                        "select 1 from cards where ord not in %s and nid in ( " +
//                        "select id from notes where mid = %d) limit 1",
//                        Utils.ids2str(ords), m.getLong("id"))) > 0;
//                if (badOrd) {
//                    return false;
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return true;

	return nil;
}
//
//
//    /** Fix possible problems and rebuild caches.
//     * 修复可能出现的问题，重新创建缓存
//     * */
//    public long fixIntegrity() {
- (NSInteger)fixIntegrity
{
//        // mPath就是~/AnkiDroid/collection.anki2
//        File file = new File(mPath);
//        ArrayList<String> problems = new ArrayList<String>();
//        long oldSize = file.length();
//        try {
//            mDb.getDatabase().beginTransaction();
//            try {
//                save(); //在此提交数据库；
//                // PRAGMA integrity_check 该命令对整个数据库进行完整性检查
//                if (!mDb.queryString("PRAGMA integrity_check").equals("ok")) {
//                    return -1;
//                }
//                // note types with a missing model
//                // 检查是否有那种笔记，即，只有笔记，而没有笔记类型的笔记；
//                ArrayList<Long> ids = mDb.queryColumn(Long.class,
//                        "SELECT id FROM notes WHERE mid NOT IN " + Utils.ids2str(mModels.ids()), 0);
//                if (ids.size() != 0) {
//                	problems.add("Deleted " + ids.size() + " note(s) with missing note type.");
//	                _remNotes(Utils.arrayList2array(ids));
//                }
//                // for each model
//                for (JSONObject m : mModels.all()) {
//                    // cards with invalid ordinal
//                    if (m.getInt("type") == Consts.MODEL_STD) {
//                        ArrayList<Integer> ords = new ArrayList<Integer>();
//                        JSONArray tmpls = m.getJSONArray("tmpls");
//                        for (int t = 0; t < tmpls.length(); t++) {
//                            ords.add(tmpls.getJSONObject(t).getInt("ord"));
//                        }
//                        ids = mDb.queryColumn(Long.class,
//                                "SELECT id FROM cards WHERE ord NOT IN " + Utils.ids2str(ords) + " AND nid IN ( " +
//                                "SELECT id FROM notes WHERE mid = " + m.getLong("id") + ")", 0);
//                        if (ids.size() > 0) {
//                            problems.add("Deleted " + ids.size() + " card(s) with missing template.");
//                            remCards(Utils.arrayList2array(ids));
//                        }
//                    }
//                    // notes with invalid field counts
//                    ids = new ArrayList<Long>();
//                    Cursor cur = null;
//                    try {
//                        cur = mDb.getDatabase().rawQuery("select id, flds from notes where mid = " + m.getLong("id"), null);
//                        while (cur.moveToNext()) {
//                            String flds = cur.getString(1);
//                            long id = cur.getLong(0);
//                            int fldsCount = 0;
//                            for (int i = 0; i < flds.length(); i++) {
//                                if (flds.charAt(i) == 0x1f) {
//                                    fldsCount++;
//                                }
//                            }
//                            if (fldsCount + 1 != m.getJSONArray("flds").length()) {
//                                ids.add(id);
//                            }
//                        }
//                        if (ids.size() > 0) {
//                            problems.add("Deleted " + ids.size() + " note(s) with wrong field count.");
//                            _remNotes(Utils.arrayList2array(ids));
//                        }
//                    } finally {
//                        if (cur != null && !cur.isClosed()) {
//                            cur.close();
//                        }
//                    }
//                }
//                // delete any notes with missing cards 删除那些没有卡片的笔记，
//                ids = mDb.queryColumn(Long.class,
//                        "SELECT id FROM notes WHERE id NOT IN (SELECT DISTINCT nid FROM cards)", 0);
//                if (ids.size() != 0) {
//                	problems.add("Deleted " + ids.size() + " note(s) with missing no cards.");
//	                _remNotes(Utils.arrayList2array(ids));
//                }
//                // cards with missing notes 删除那些没有笔记的卡片
//                ids = mDb.queryColumn(Long.class,
//                        "SELECT id FROM cards WHERE nid NOT IN (SELECT id FROM notes)", 0);
//                if (ids.size() != 0) {
//                    problems.add("Deleted " + ids.size() + " card(s) with missing note.");
//                    remCards(Utils.arrayList2array(ids));
//                }
//                // cards with odue set when it shouldn't be
//                ids = mDb.queryColumn(Long.class,
//                        "select id from cards where odue > 0 and (type=1 or queue=2) and not odid", 0);
//                if (ids.size() != 0) {
//                    problems.add("Fixed " + ids.size() + " card(s) with invalid properties.");
//                    mDb.execute("update cards set odue=0 where id in " + Utils.ids2str(ids));
//                }
//                // cards with odid set when not in a dyn deck
//                ArrayList<Long> dids = new ArrayList<Long>();
//                for (long id : mDecks.allIds()) {
//                    if (!mDecks.isDyn(id)) {
//                        dids.add(id);
//                    }
//                }
//                ids = mDb.queryColumn(Long.class,
//                        "select id from cards where odid > 0 and did in " + Utils.ids2str(dids), 0);
//                if (ids.size() != 0) {
//                    problems.add("Fixed " + ids.size() + " card(s) with invalid properties.");
//                    mDb.execute("update cards set odid=0, odue=0 where id in " + Utils.ids2str(ids));
//                }
//                // tags
//                mTags.registerNotes();
//                // field cache
//                for (JSONObject m : mModels.all()) {
//                    updateFieldCache(Utils.arrayList2array(mModels.nids(m)));
//                }
//                // new cards can't have a due position > 32 bits
//                mDb.execute("UPDATE cards SET due = 1000000, mod = " + Utils.intNow() + ", usn = " + usn()
//                        + " WHERE due > 1000000 AND queue = 0");
//                // new card position
//                mConf.put("nextPos", mDb.queryScalar("SELECT max(due) + 1 FROM cards WHERE type = 0"));
//                // reviews should have a reasonable due
//                ids = mDb.queryColumn(Long.class, "SELECT id FROM cards WHERE queue = 2 AND due > 10000", 0);
//                if (ids.size() > 0) {
//                	problems.add("Reviews had incorrect due date.");
//                    mDb.execute("UPDATE cards SET due = 0, mod = " + Utils.intNow() + ", usn = " + usn()
//                            + " WHERE id IN " + Utils.ids2str(Utils.arrayList2array(ids)));
//                }
//                mDb.getDatabase().setTransactionSuccessful();
//                // DB must have indices. Older versions of AnkiDroid didn't create them for new collections.
//                int ixs = mDb.queryScalar("select count(name) from sqlite_master where type = 'index'");
//                if (ixs < 7) {
//                    problems.add("Indices were missing.");
//                    Storage.addIndices(mDb);
//                }
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            } finally {
//                mDb.getDatabase().endTransaction();
//            }
//        } catch (RuntimeException e) {
//            Timber.e(e, "doInBackgroundCheckDatabase - RuntimeException on marking card");
//            AnkiDroidApp.sendExceptionReport(e, "doInBackgroundCheckDatabase");
//            return -1;
//        }
//        // and finally, optimize
//        optimize();
//        file = new File(mPath);
//        long newSize = file.length();
//        // if any problems were found, force a full sync
//        if (problems.size() > 0) {
//            modSchemaNoCheck();
//        }
//        // TODO: report problems
//        return (long) ((oldSize - newSize) / 1024);

	return nil;
}
//
//
//    public void optimize() {
- (void)optimize
{
//        Timber.i("executing VACUUM statement");
//        mDb.execute("VACUUM");
//        Timber.i("executing ANALYZE statement");
//        mDb.execute("ANALYZE");

	
}
//
//
//    /**
//     * Logging
//     * ***********************************************************
//     * 例如： mCol.log(mToday, mDayCutoff);
//     */
//
//    public void log(Object... args) {
//- (void)logWithargs:(NSObject *)args, ...;
- (void)logWithargs:(NSObject *)args, ...
{
//        if (!mDebugLog) {
//            return;
//        }
//        StackTraceElement trace = Thread.currentThread().getStackTrace()[3];
//        // Overwrite any args that need special handling for an appropriate string representation
//        for (int i = 0; i < args.length; i++) {
//            if (args[i] instanceof long[]) {
//                args[i] = Arrays.toString((long []) args[i]);
//            }
//        }
//        String s = String.format("[%s] %s:%s(): %s", Utils.intNow(), trace.getFileName(), trace.getMethodName(),
//                TextUtils.join(",  ", args));
//        mLogHnd.println(s);
//        Timber.d(s);

	
}
//
//
//    private void _openLog() {
- (void)_openLog
{
//        if (!mDebugLog) {
//            return;
//        }
//        try {
//            File lpath = new File(mPath.replaceFirst("\\.anki2$", ".log"));
//            if (lpath.exists() && lpath.length() > 10*1024*1024) {
//                File lpath2 = new File(lpath + ".old");
//                if (lpath2.exists()) {
//                    lpath2.delete();
//                }
//                lpath.renameTo(lpath2);
//            }
//            mLogHnd = new PrintWriter(new BufferedWriter(new FileWriter(lpath, true)), true);
//        } catch (IOException e) {
//            // turn off logging if we can't open the log file
//            Timber.e("Failed to open collection.log file - disabling logging");
//            mDebugLog = false;
//        }

	
}
//
//
//    private void _closeLog() {
- (void)_closeLog
{
//        if (mLogHnd != null) {
//            mLogHnd.close();
//            mLogHnd = null;
//        }

	
}
//
//    /**
//     * Getters/Setters ********************************************************** *************************************
//     */
//
//    public AnkiDb getDb() {
- (AnkiDb *)getDb
{
//        return mDb;

	return self.mDb;
}
//
//
//    public Decks getDecks() {
- (Decks *)getDecks
{
//        return mDecks;

	return self.mDecks;
}
//
//
//    public Media getMedia() {
- (Media *)getMedia
{
//        return mMedia;

	return self.mMedia;
}
//
//
//    public Models getModels() {
- (Models *)getModels
{
//        return mModels;

	return self.mModels;
}
//
//    /** Check if this collection is valid. */
//    public boolean validCollection() {
- (BOOL)validCollection
{
//    	//TODO: more validation code
//    	return mModels.validateModel();

	return [self.mModels validateModel];
}
//
//    public JSONObject getConf() {
- (NSMutableDictionary *)getConf
{
//        return mConf;

	return self.mConf;
}
//
//
//    public void setConf(JSONObject conf) {
- (void)setConfWithconf:(NSMutableDictionary *)conf
{
//        mConf = conf;
    self.mConf = conf;
	
}
//
//
//    public long getScm() {
- (NSInteger)getScm
{
//        return mScm;

	return self.mScm;
}
//
//
//    public void setScm(long scm) {
- (void)setScmWithscm:(NSInteger)scm
{
//        mScm = scm;

    self.mScm = scm;
}
//
//
//    public boolean getServer() {
- (BOOL)getServer
{
//        return mServer;

	return self.mServer;
}
//
//
//    public void setLs(long ls) {
- (void)setLsWithls:(NSInteger)ls
{
//        mLs = ls;
    self.mLs = ls;
	
}
//
//
//    public long getLs() {
- (NSInteger)getLs
{
//        return mLs;

	return self.mLs;
}
//
//
//    public void setUsnAfterSync(int usn) {
- (void)setUsnAfterSyncWithusn:(NSInteger)usn
{
//        mUsn = usn;
    self.mUsn = usn;
	
}
//
//
//    public long getMod() {
- (NSInteger)getMod
{
//        return mMod;

	return self.mMod;
}
//
//
//    /* this getter is only for syncing routines, use usn() instead elsewhere */
//    public int getUsnForSync() {
- (NSInteger)getUsnForSync
{
//        return mUsn;

	return self.mUsn;
}
//
//
//    public Tags getTags() {
- (Tags *)getTags
{
//        return mTags;

	return self.mTags;
}
//
//
//    public long getCrt() {
- (NSInteger)getCrt
{
//        return mCrt;

	return self.mCrt;
}
//
//
//    public void setCrt(long crt) {
- (void)setCrtWithcrt:(NSInteger)crt
{
//        mCrt = crt;

    self.mCrt = crt;
}
//
//
//    public Sched getSched() {
- (Sched *)getSched
{
//        return mSched;

	return self.mSched;
}
//
//
//    public String getPath() {
- (NSString *)getPath
{
//        return mPath;

	return self.mPath;
}
//
//
//    public void setServer(boolean server) {
- (void)setServerWithserver:(BOOL)server
{
//        mServer = server;

    self.mServer = server;
}
//
//    public boolean getDirty() {
- (BOOL)getDirty
{
//        return mDty;

	return self.mDty;
}


@end