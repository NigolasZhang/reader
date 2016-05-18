#import "Note.h"
#import "XCollection.h"


#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"
#import "Utils.h"
#import "Pair.h"
#import "NSString+hanzi.h"


@implementation Note

//     * */
//    private Map<String, Pair<Integer, JSONObject>> mFMap;
//    // 它是来自于collection的schema
//    private long mScm;
//    // 它是统一序列化数字，它来自于collection, 与同步有关系，
//    private int mUsn;
//    // 最有一次修改的时间；
//    private long mMod;
//    private boolean mNewlyAdded;
//
//    
//    public Note(Collection col, Long id) {
- (instancetype)initWithcol:(XCollection *)col xid:(NSInteger)xid
{
//        this(col, null, id);
    
	return [self initWithcol:col model:nil xid:xid];
}
//
//
//    public Note(Collection col, JSONObject model) {
- (instancetype)initWithcol:(XCollection *)col model:(NSMutableDictionary *)model
{
//        this(col, model, null);

	return [self initWithcol:col model:model xid: nil];
}
//
//
//    public Note(Collection col, JSONObject model, Long id) {
- (instancetype)initWithcol:(XCollection *)col model:(NSMutableDictionary *)model xid:(NSInteger)xid
{
//        assert !(model != null && id != null);
//        mCol = col;
//        if (id != null) {
//            mId = id;
//            load();
//        } else {
//            mId = Utils.timestampID(mCol.getDb(), "notes");
//            mGuId = Utils.guid64();
//            mModel = model;
//            try {
//                mMid = model.getLong("id");
//                mTags = new ArrayList<String>();
//                mFields = new String[model.getJSONArray("flds").length()];
//                Arrays.fill(mFields, "");
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//            mFlags = 0;
//            mData = "";
//            /** "Mapping of field name -> (ord, field).
//             *  比如： 字段有“正面”和“背面”，正面是第一个字段，背面是第二个字段；
//             *  则返回的map集合的第一个元素就是下面的样式：
//             *  { “正面” {0， {name:“正面”， sticky:false, rtl:false, ord:0, font:"Arial", size:20}}}
//             *  { “背面” {1， {name:“背面”， sticky:false, rtl:false, ord:1, font:"Arial", size:20}}}
//             * */
//            mFMap = mCol.getModels().fieldMap(mModel);
//            mScm = mCol.getScm();
//        }
    
    //-----
    //assert !(model != null && id != null);
    if (self = [super init]) {
        _mCol = col;
        
        if (xid != nil) {
            _mId = xid;
            [self load];
        } else {
            _mId = [Utils timestampIDWithdb:[self.mCol getDb] table:@"notes"];
            _mGuId = [Utils guid64];
            _mModel = model;
            
            _mMid = [model objectForKey:@"id"];
            _mTags = [NSMutableArray array];
            _mFields = [NSMutableArray array];
            
//          TTT  _mFields fill, "";
            
            _mFlags = 0;
            _mData = @"";
            /** "Mapping of field name -> (ord, field).
             *  比如： 字段有“正面”和“背面”，正面是第一个字段，背面是第二个字段；
             *  则返回的map集合的第一个元素就是下面的样式：
             *  { “正面” {0， {name:“正面”， sticky:false, rtl:false, ord:0, font:"Arial", size:20}}}
             *  { “背面” {1， {name:“背面”， sticky:false, rtl:false, ord:1, font:"Arial", size:20}}}
             * */
            _mFMap = [[self.mCol getModels] fieldMapWithm:self.mModel];
            _mScm = [self.mCol getScm];
            
        }
    }
    
    return self;
}
//
//    // 从数据库的表中读取数据并加载；
//    public void load() {
- (void)load
{
//        Cursor cursor = null;
//        try {
//            cursor = mCol.getDb().getDatabase()
//                    .rawQuery("SELECT guid, mid, mod, usn, tags, flds, flags, data FROM notes WHERE id = " + mId, null);
//            if (!cursor.moveToFirst()) {
//                throw new RuntimeException("Notes.load(): No result from query for note " + mId);
//            }
//            mGuId = cursor.getString(0);
//            mMid = cursor.getLong(1);
//            mMod = cursor.getLong(2);
//            mUsn = cursor.getInt(3);
//            mTags = mCol.getTags().split(cursor.getString(4));
//            mFields = Utils.splitFields(cursor.getString(5));
//            mFlags = cursor.getInt(6);
//            mData = cursor.getString(7);
//            mModel = mCol.getModels().get(mMid);
//            mFMap = mCol.getModels().fieldMap(mModel);
//            mScm = mCol.getScm();
//        } finally {
//            if (cursor != null) {
//                cursor.close();
//            }
//        }-------------------
    
//    FMResultSet *cursor = nil;
//    cursor = [[_mDb getDatabase] executeQuery:@"SELECT crt, mod, scm, dty, usn, ls, conf, models, decks, dconf, tags FROM col"];
//    if (![cursor next]) {
//        return;
//    }
//    _mCrt = [cursor longForColumnIndex:0];
//    _mMod = [cursor longForColumnIndex:1];
    
    
            FMResultSet *cursor = nil;
    NSString *sql = [NSString stringWithFormat:@"SELECT guid, mid, mod, usn, tags, flds, flags, data FROM notes WHERE id = %d", self.mId];
    cursor = [[[self.mCol getDb] getDatabase] executeQuery:sql];
    
    
    if (![cursor next]) {
        NSLog(@"Notes.load(): No result from query for note ");
    }
    
    _mGuId = [cursor stringForColumnIndex:0];
    _mMid = [cursor longForColumnIndex:1];
    _mMod = [cursor longForColumnIndex:2];
    _mUsn = [cursor intForColumnIndex:3];
    _mTags = [[self.mCol getTags] splitWithtags:[cursor stringForColumnIndex:4]];
    _mFields = [Utils splitFieldsWithfields:[cursor stringForColumnIndex:5]];
    _mFlags = [cursor stringForColumnIndex:6];
    _mData = [cursor stringForColumnIndex:7];
    _mModel = [[self.mCol getModels] getWithxid:self.mMid];
    _mFMap = [[self.mCol getModels] fieldMapWithm:self.mModel];
    _mScm = [self.mCol getScm];
    
    

}
//
//
//    /*
//     * If fields or tags have changed, write changes to disk.
//     * 刷入数据库；
//     */
//    public void flush() {
- (void)flush
{
//    	flush(null);

    [self flushWithmod:nil];
}
//
//    public void flush(Long mod) {
- (void)flushWithmod:(NSInteger)mod
{
//        flush(mod, true);

    [self flushWithmod:mod changeUsn:YES];
}
//
//    public void flush(Long mod, boolean changeUsn) {
- (void)flushWithmod:(NSInteger)mod changeUsn:(BOOL)changeUsn
{
//        assert mScm == mCol.getScm();
//        _preFlush();
//        if (changeUsn) {
//            mUsn = mCol.usn();
//        }
//        String sfld = Utils.stripHTMLMedia(mFields[mCol.getModels().sortIdx(mModel)]);
//        String tags = stringTags();
//        String fields = joinedFields();
//        if (mod == null && mCol.getDb().queryScalar(String.format(Locale.US,
//                "select 1 from notes where id = ? and tags = ? and flds = ?",
//                mId, tags, fields)) > 0) {
//            return;
//        }
//        long csum = Utils.fieldChecksum(mFields[0]);
//        mMod = mod != null ? mod : Utils.intNow();
//        mCol.getDb().execute("insert or replace into notes values (?,?,?,?,?,?,?,?,?,?,?)",
//                new Object[] { mId, mGuId, mMid, mMod, mUsn, tags, fields, sfld, csum, mFlags, mData });
//        mCol.getTags().register(mTags);
//        _postFlush();

//	return nil;
    
//-----
    //        assert mScm == mCol.getScm();
    self.mScm = [self.mCol getScm];
    [self _preFlush];
    if (changeUsn) {
        self.mUsn = [self.mCol usn];
    }
    
    NSInteger i = [[self.mCol getModels] sortIdxWithm:self.mModel];
    NSString *sfld = [Utils stripHTMLMediaWiths:[self.mFields objectAtIndex:i]];
    
    
    NSString *tags = [self stringTags];
    NSString *fields = [self joinedFields];
    
    NSString *sql = [NSString stringWithFormat:@"select 1 from notes where id = %ld and tags = %@ and flds = %@", (long)self.mId, tags, fields];
    NSInteger q = [[self.mCol getDb] queryScalarWithquery:sql];
    if (mod == 0 && q > 0) {
        return;
    }
    
    long csum = [Utils fieldChecksumWithdata:self.mFields[0]];
    self.mMod = mod != 0 ? mod : [Utils intNow];
    
    
    NSString *sql1 = [NSString stringWithFormat:@"insert or replace into notes values (%ld,%@,%ld,%ld,%ld,%@,%@,%@,%ld,%ld,%@)", (long)self.mId, self.mGuId, (long)self.mMid, (long)self.mMod, (long)self.mUsn, tags, fields, sfld, csum, (long)self.mFlags, self.mData];
    [[self.mCol getDb] executeWithsql:sql1];
    [[self.mCol getTags] registerWithtags:self.mTags];
    [self _postFlush];
   
}
//
//
//    // 将所有字段连接成一个字符串；
//    public String joinedFields() {
- (NSString *)joinedFields
{
//        return Utils.joinFields(mFields);

	return [Utils joinFieldsWithlist:self.mFields];
}
//
//
//    // 从所有的卡片中筛选出，用到这个note的卡片，并返回这个卡片集合；
//    public ArrayList<Card> cards() {
- (NSMutableArray *)cards
{
//        ArrayList<Card> cards = new ArrayList<Card>();
//        Cursor cur = null;
//        try {
//            cur = mCol.getDb().getDatabase()
//                    .rawQuery("SELECT id FROM cards WHERE nid = " + mId + " ORDER BY ord", null);
//            while (cur.moveToNext()) {
//                cards.add(mCol.getCard(cur.getLong(0)));
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }
//        }
//        return cards;
    
    //--------
    NSMutableArray *cards= [NSMutableArray array];
    FMResultSet *cur = nil;
    
    NSString *sql = [NSString stringWithFormat:@"SELECT id FROM cards WHERE nid = %ld ORDER BY ord", (long)self.mId];
    cur = [[[self.mCol getDb] getDatabase] executeQuery:sql];
    while ([cur next]) {
        [cards addObject:[self.mCol getCardWithxid:[cur longForColumnIndex:0]]];
    }
    return cards;
    
}
//
//    // 返回这条笔记用到的笔记类型，它记载着当前笔记的类型，例如，“填空”，“基础”，“选择”，
//    // 里面会有，这个笔记类型所包含的“字段”，有几个字段组成，即，它反映的是笔记类型，注意：
//    // 要和卡片模板区分开来，卡片模板未必用到所有的字段，
//    public JSONObject model() {
- (NSMutableDictionary *)model
{
//        return mModel;

	return self.mModel;
}
//
//    // 将字段的元数据名字，拿出来拼成数组keys
//    public String[] keys() {
- (NSArray *)keys
{
//        return (String[])mFMap.keySet().toArray();

	return [self.mFMap allKeys];
}
//
//    // 将字段的具体值，拿出来拼成一个数组；
//    public String[] values() {
- (NSMutableArray *)values
{
//        return mFields;

	return self.mFields;
}
//
//    /**返回一个二维数组，如下所示：
//     * [
//     *      ["正面"，“question：what color is apple?”],
//     *      ["背面"，“red！”]
//     * ]
//     * @return
//     */
//    public String[][] items() {
- (NSMutableArray *)items
{
//        // TODO: Revisit “重新访问”this method. The field order returned differs from Anki.
//        // The items here are only used in the note editor, so it's a low priority.
//        String[][] result = new String[mFMap.size()][2];
//        for (String fname : mFMap.keySet()) {
//            int i = mFMap.get(fname).first;
//            result[i][0] = fname;
//            result[i][1] = mFields[i];
//        }
//        return result;
    
//    //2.---------------------addObject
//    //添加元素的方法
//    [mArray1 addObject:str1];
//    [mArray1 addObject:str2];
//    //添加数组，把mArray1中的所有元素全部添加到mArray2中
//    [mArray2 addObjectsFromArray:mArray1];
//    NSLog(@"mArray3 = %@",mArray2);
//    
//    //二维数组
//    //这个是将mArray1添加到mArray2数组中，这样mArray2就变成了二维数组了
//    [mArray2 addObject:mArray1];
//    
    //-------
    NSMutableArray *result = [NSMutableArray array];
    for (NSString *fname in [self.mFMap allKeys]) {
        Pair *e = [self.mFMap objectForKey:fname];
        NSInteger i = e.first;
        
        NSString *s0 = fname;
        NSString *s1 = self.mFields[i];
        NSArray *arr = [[NSArray alloc] initWithObjects:s0,s1, nil];
        
        [result addObject:arr];
        
    }
    
    return result;
    
    //--------

}
//
//    // 给你一个key, 它在字段列表中的索引号是多少？
//    // 比如“正面”的索引是0；
//    // 再比如“背面”的索引是1；
//    private int _fieldOrd(String key) {
- (NSInteger)_fieldOrdWithkey:(NSString *)key
{
//        return mFMap.get(key).first;
    Pair *e = [self.mFMap objectForKey:key];
	return e.first;
}
//
//    // 返回字段fields中某个字段的值；
//    public String getitem(String key) {
- (NSString *)getitemWithkey:(NSString *)key
{
//        return mFields[_fieldOrd(key)];
    NSInteger i = [self _fieldOrdWithkey:key];
    
	return self.mFields[i];
}
//
//    // 为fileds字段的某个key赋值；
//    public void setitem(String key, String value) {
- (void)setitemWithkey:(NSString *)key value:(NSString *)value
{
//        mFields[_fieldOrd(key)] = value;
    NSInteger i = [self _fieldOrdWithkey:key];
    [self.mFields replaceObjectAtIndex:i withObject:value];
   
}
//
//    //当前笔记的字段列表，包含名字叫“key”的字段吗？
//    public boolean contains(String key) {
- (BOOL)containsWithkey:(NSString *)key
{
//    	return mFMap.containsKey(key);

	return [[self.mFMap allKeys] containsObject:key];
}
//
//
//    /**
//     * Tags
//     * ***********************************************************
//     */
//
//    public boolean hasTag(String tag) {
- (BOOL)hasTagWithtag:(NSString *)tag
{
//        return mCol.getTags().inList(tag, mTags);

	return [[self.mCol getTags] inListWithtag:tag tags:self.mTags];
}
//
//    // 将当前note的Tags连接成一个字符串；
//    public String stringTags() {
- (NSString *)stringTags
{
//        return mCol.getTags().join(mCol.getTags().canonify(mTags));

    Tags *t = [self.mCol getTags];
	return [t joinWithtags:[t canonifyWithtagList:self.mTags]];
}
//
//    // 通过字符串来设置标签，从collection中获取tag字段的字符串，然后对其切分，切成数组，赋值给mTags
//    public void setTagsFromStr(String str) {
- (void)setTagsFromStrWithstr:(NSString *)str
{
//        mTags = mCol.getTags().split(str);

    self.mTags = [[self.mCol getTags] splitWithtags:str];
}
//
//
//    // 删除标签；
//    public void delTag(String tag) {
- (void)delTagWithtag:(NSString *)tag
{
//        List<String> rem = new LinkedList<String>();
//        // 首先忽略大小写，遍历出现有的所有同名标签，放入一个集合b中，
//        for (String t : mTags) {
//            if (t.equalsIgnoreCase(tag)) {
//                rem.add(t);
//            }
//        }
//        // 遍历集合b，删除mTags中b包含的元素；
//        for (String r : rem) {
//            mTags.remove(r);
//        }
//-----
    NSMutableArray *rem = [NSMutableArray array];
    // 首先忽略大小写，遍历出现有的所有同名标签，放入一个集合b中，
    for (NSString *t in self.mTags) {
        if ([t isEqualToStringIgnoreCase:tag]) {
            [rem addObject:t];
        }
    }
    // 遍历集合b，删除mTags中b包含的元素；
    for (NSString *r in rem) {
        [self.mTags removeObject:r];
    }
}
//    /*
//     *  duplicates will be stripped on save
//     *  添加标签，如果重复，将会倍取消，
//     */
//    public void addTag(String tag) {
- (void)addTagWithtag:(NSString *)tag
{
//        mTags.add(tag);

    [self.mTags addObject:tag];
}
//
//
//    /**
//     * Unique/duplicate check
//     * ***********************************************************
//     */
//
//    /**
//     * 
//     * @return 1 if first is empty; 2 if first is a duplicate, null otherwise.
//     * 在添加新的笔记的时候，要避免首字段为空，和重复，这个方法就是用来判断这个问题的
//     * 如果返回时1，则说明手字段是空的，返回2，则说明有重复；
//     */
//    public Integer dupeOrEmpty() {
- (NSInteger)dupeOrEmpty
{
//        String val = mFields[0];
//        if (val.trim().length() == 0) {
//            return 1;
//        }
//        long csum = Utils.fieldChecksum(val);
//        // find any matching csums and compare
//        // Todo_john ？？？？？？？带解决的问题，queryCloumn是怎么回事呢？
//        for (String flds : mCol.getDb().queryColumn(
//                String.class,
//                "SELECT flds FROM notes WHERE csum = " + csum + " AND id != " + (mId != 0 ? mId : 0) + " AND mid = "
//                        + mMid, 0)) {
//            if (Utils.stripHTMLMedia(
//                    Utils.splitFields(flds)[0]).equals(Utils.stripHTMLMedia(mFields[0]))) {
//                return 2;
//            }
//        }
//        return null;
//----
    NSString *val = self.mFields[0];
    if ([[val trim] length] == 0) {
        return 1;
    }
    //csum 它是由排序的域生成的哈西值，用来避免重复；
    NSInteger csum = [Utils fieldChecksumWithdata:val];
    NSInteger xmid = self.mId != 0 ? self.mId : 0;
    NSString *sql = [NSString stringWithFormat:@"SELECT flds FROM notes WHERE csum = %ld AND id != %ld AND mid = %ld", (long)csum, (long)xmid, (long)self.mMid];
    
    NSMutableArray *r = [[self.mCol getDb] queryColumnWithtype:@"string" query:sql column:0];
    for (NSString *flds in r) {
        if ([[Utils stripHTMLMediaWiths:[Utils splitFieldsWithfields:flds][0]] isEqualToString:[Utils stripHTMLMediaWiths:self.mFields[0]]]) {
            return 2;
        }
    }
    return 0;
  
}
//
//
//    /**
//     * Flushing cloze notes
//     * ***********************************************************
//     */
//
//    /*
//     * have we been added yet?
//     */
//    private void _preFlush() {
- (void)_preFlush
{
//        // 当前的笔记，有没有生成过卡片，我们已经将该笔记加入并生成卡片了吗？
//        mNewlyAdded = mCol.getDb().queryScalar("SELECT 1 FROM cards WHERE nid = " + mId) == 0;
            // 当前的笔记，有没有生成过卡片，我们已经将该笔记加入并生成卡片了吗？
    NSString *sql = [NSString stringWithFormat:@"SELECT 1 FROM cards WHERE nid = %ld", self.mId];
    NSInteger n = [[self.mCol getDb] queryScalarWithquery:sql];
    self.mNewlyAdded = n == 0;
    
}

//    /*
//     * generate missing cards
//     * 之前笔记可能没有卡片没生成，现在补全生成；
//     */
//    private void _postFlush() {
- (void)_postFlush
{
//        // 当前笔记已经的卡片已经生成了吗？如果没有，我们就去生成卡片，
//        if (!mNewlyAdded) {
//            // 这是什么语法，就是生成一个long类型的数组，数组中有一个元素，即mId,
//            mCol.genCards(new long[] { mId });
//        }
            // 当前笔记已经的卡片已经生成了吗？如果没有，我们就去生成卡片，
            if (!self.mNewlyAdded) {
                // 这是什么语法，就是生成一个long类型的数组，数组中有一个元素，即mId,
                NSMutableArray *arr = [NSMutableArray array];
                [arr addObject:[NSNumber numberWithInt:self.mId]];
                
                [self.mCol genCardsWithnids:arr];
            }
 
}
//
//    /*
//     * ***********************************************************
//     * The methods below are not in LibAnki.
//     * ***********************************************************
//     * 返回当前note的id；
//     */
//
//    public long getMid() {
- (NSInteger)getMid
{
//        return mMid;

	return self.mMid;
}
//
//
//    /**
//     * @return the mId
//     * 返回当前note的id；
//     */
//    public long getId() {
- (NSInteger)getId
{
//        // TODO: Conflicting method name and return value. Reconsider.
//        return mId;

	return self.mId;
}
//
//
//    // 返回当前系统加载的牌组集合；
//    public Collection getCol() {
- (XCollection *)getCol
{
//        return mCol;

	return self.mCol;
}
//
//
//    // 返回字段字符串，来自note表中的，对应当前note笔记的的“字段字符串”
//    public String getSFld() {
- (NSString *)getSFld
{
//        return mCol.getDb().queryString("SELECT sfld FROM notes WHERE id = " + mId);

    NSString *sql = [NSString stringWithFormat:@"SELECT sfld FROM notes WHERE id = %ld", self.mId];
	return [[self.mCol getDb] queryStringWithquery:sql];
}
//
//
//    // 返回经过处理后的字段数组，不同于上面那个，
//    public String[] getFields() {
- (NSMutableArray *)getFields
{
//        return mFields;

	return self.mFields;
}
//
//
//    // 为字段数组的各个元素赋值
//    public void setField(int index, String value) {
- (void)setFieldWithindex:(NSInteger)index value:(NSString *)value
{
//        mFields[index] = value;

    self.mFields[index] = value;
}
//
//    //获取最后修改时间；
//    public long getMod() {
- (NSInteger)getMod
{
//        return mMod;

	return self.mMod;
}

//copy这个方法找不到，您自己匹配吧！
- (id)copyWithZone:(nullable NSZone *)zone{
    //1. 创建一个新对象；
    Note *n = [[[self class] allocWithZone:zone] init];
    //2. 设置当前对象内容到新对象；
    
    //3. 返回新的对象；
    return n;
}


//
//
//    // 返回mtags；
//    public List<String> getTags() {
- (NSMutableArray *)getTags
{
//        return mTags;

	return self.mTags;
}


@end