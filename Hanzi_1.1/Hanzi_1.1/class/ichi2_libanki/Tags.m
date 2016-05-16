#import "Tags.h"
#import "XCollection.h"
#import "FMDB.h"


#import "Note.h"
#import "Card.h"
#import "Decks.h"
#import "Models.h"
#import "Media.h"
#import "AnkiDb.h"

@implementation Tags


//public class Tags {
//
//    private static final Pattern sCanonify = Pattern.compile("[\"']");
//
//    private Collection mCol;
//    private TreeMap<String, Integer> mTags = new TreeMap<String, Integer>();
//    private boolean mChanged;
//
//
//    /**
//     * Registry save/load
//     * ***********************************************************
//     */
//
//    public Tags(Collection col) {
- (instancetype)initWithcol:(XCollection *)col
{
//        mCol = col;
    if (self = [super init]) {
        _mCol = col;
    }
    return self;

}
//
//
//    public void load(String json) {
- (void)loadWithjson:(NSString *)json
{
//        try {
//            JSONObject tags = new JSONObject(json);
//            Iterator<?> i = tags.keys();
//            while (i.hasNext()) {
//                String t = (String) i.next();
//                mTags.put(t, tags.getInt(t));
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        mChanged = false;
   

        // 1. 解析mtags
    _mTags = [NSMutableDictionary dictionary];
    NSMutableDictionary *tags = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding]options:NSJSONReadingMutableLeaves error:nil];
    
    NSArray *ids = [tags allKeys];
    
    for (int i = 0; i<ids.count; i++) {
        
        NSString *t = ids[i];
        NSNumber *n = [tags objectForKey:t];
        
        [_mTags setObject:n forKey:t];
    }

}
//
//
//    public void flush() {
- (void)flush
{
//        if (mChanged) {
//            JSONObject tags = new JSONObject();
//            for (Map.Entry<String, Integer> t : mTags.entrySet()) {
//                try {
//                    tags.put(t.getKey(), t.getValue());
//                } catch (JSONException e) {
//                    throw new RuntimeException(e);
//                }
//            }
//            ContentValues val = new ContentValues();
//            val.put("tags", Utils.jsonToString(tags));
//            // TODO: the database update call here sets mod = true. Verify if this is intended.
//            mCol.getDb().update("col", val);
//            mChanged = false;
//        }

//	return nil;
}
//
//
//    /**
//     * Registering and fetching tags
//     * ***********************************************************
//     */
//
//    /** Given a list of tags, add any missing ones to tag registry. */
//    public void register(Iterable<String> tags) {
- (void)registerWithtags:(NSObject *)tags
{
//        register(tags, null);

//	return nil;
}
//
//
//    public void register(Iterable<String> tags, Integer usn) {
- (void)registerWithtags:(NSObject *)tags usn:(NSInteger)usn
{
//        //boolean found = false;
//        for (String t : tags) {
//            if (!mTags.containsKey(t)) {
//                mTags.put(t, usn == null ? mCol.usn() : usn);
//                mChanged = true;
//            }
//        }
//        //if (found) {
//        //    runHook("newTag"); // TODO
//        //}

//	return nil;
}
//
//
//    public List<String> all() {
- (NSMutableArray *)all
{
//        List<String> list = new ArrayList<String>();
//        list.addAll(mTags.keySet());
//        return list;

	return nil;
}
//
//
//    public void registerNotes() {
- (void)registerNotes
{
//        registerNotes(null);

//	return nil;
}
//
//
//    /** Add any missing tags from notes to the tags list. */
//    public void registerNotes(long[] nids) {
- (void)registerNotesWithnids:(NSMutableArray *)nids
{
//        // when called with a null argument, the old list is cleared first.
//        String lim;
//        if (nids != null) {
//            lim = " WHERE id IN " + Utils.ids2str(nids);
//        } else {
//            lim = "";
//            mTags.clear();
//            mChanged = true;
//        }
//        List<String> tags = new ArrayList<String>();
//        Cursor cursor = null;
//        try {
//            cursor = mCol.getDb().getDatabase().rawQuery("SELECT DISTINCT tags FROM notes"+lim, null);
//            while (cursor.moveToNext()) {
//                tags.add(cursor.getString(0));
//            }
//        } finally {
//            if (cursor != null) {
//                cursor.close();
//            }
//        }
//        HashSet<String> tagSet = new HashSet<String>();
//        for (String s : split(TextUtils.join(" ", tags))) {
//            tagSet.add(s);
//        }
//        register(tagSet);

//	return nil;
}
//
//
//    public Set<Map.Entry<String, Integer>> allItems() {
- (NSMutableArray *)allItems
{
//        return mTags.entrySet();

	return nil;
}
//
//
//    public void save() {
- (void)save
{
//        mChanged = true;

//	return nil;
}
//
//
//    /**
//    * byDeck returns the tags of the cards in the deck
//    * @param did the deck id
//    * @param children whether to include the deck's children
//    * @return a list of the tags
//    */
//    public ArrayList<String> byDeck(long did, boolean children) {
- (NSMutableArray *)byDeckWithdid:(NSInteger)did children:(BOOL)children
{
//        String sql;
//        if (children) {
//            ArrayList<Long> dids = new ArrayList<Long>();
//            dids.add(did);
//            for (long id : mCol.getDecks().children(did).values()) {
//                dids.add(id);
//            }
//            sql = "SELECT DISTINCT n.tags FROM cards c, notes n WHERE c.nid = n.id AND c.did IN " + Utils.ids2str(Utils.arrayList2array(dids));
//        } else {
//            sql = "SELECT DISTINCT n.tags FROM cards c, notes n WHERE c.nid = n.id AND c.did = " + did;
//        }
//        List<String> tags = mCol.getDb().queryColumn(String.class, sql, 0);
//        // Cast to set to remove duplicates
//        // Use methods used to get all tags to parse tags here as well.
//        return new ArrayList<String>(new HashSet<String>(split(TextUtils.join(" ", tags))));

	return nil;
}
//
//
//    /**
//     * Bulk addition/removal from notes
//     * ***********************************************************
//     */
//
//    /**
//     * FIXME: This method must be fixed before it is used. See note below.
//     * Add/remove tags in bulk. TAGS is space-separated.
//     *
//     * @param ids The cards to tag.
//     * @param tags List of tags to add/remove. They are space-separated.
//     * @param
//     */
//    public void bulkAdd(List<Long> ids, String tags) {
- (NSMutableArray *)bulkAddWithids:(NSMutableArray *)ids tags:(NSString *)tags
{
//        bulkAdd(ids, tags, true);

	return nil;
}
//
//
//    /**
//     * FIXME: This method must be fixed before it is used. Its behaviour is currently incorrect.
//     * This method is currently unused in AnkiDroid so it will not cause any errors in its current state.
//     */
//    public void bulkAdd(List<Long> ids, String tags, boolean add) {
- (NSMutableArray *)bulkAddWithids:(NSMutableArray *)ids tags:(NSString *)tags add:(BOOL)add
{
//        List<String> newTags = split(tags);
//        if (newTags == null || newTags.isEmpty()) {
//            return;
//        }
//        // cache tag names
//        register(newTags);
//        // find notes missing the tags
//        String l;
//        if (add) {
//            l = "tags not ";
//        } else {
//            l = "tags ";
//        }
//        StringBuilder lim = new StringBuilder();
//        for (String t : newTags) {
//            if (lim.length() != 0) {
//                lim.append(" or ");
//            }
//            lim.append(l).append("like '% ").append(t).append(" %'");
//        }
//        Cursor cur = null;
//        List<Long> nids = new ArrayList<Long>();
//        ArrayList<Object[]> res = new ArrayList<Object[]>();
//        try {
//            cur = mCol
//                    .getDb()
//                    .getDatabase()
//                    .rawQuery("select id, tags from notes where id in " + Utils.ids2str(ids) +
//                            " and (" + lim + ")", null);
//            if (add) {
//                while (cur.moveToNext()) {
//                    nids.add(cur.getLong(0));
//                    res.add(new Object[] { addToStr(tags, cur.getString(1)), Utils.intNow(), mCol.usn(), cur.getLong(0) });
//                }
//            } else {
//                while (cur.moveToNext()) {
//                    nids.add(cur.getLong(0));
//                    res.add(new Object[] { remFromStr(tags, cur.getString(1)), Utils.intNow(), mCol.usn(),
//                            cur.getLong(0) });
//                }
//            }
//        } finally {
//            if (cur != null) {
//                cur.close();
//            }

	return nil;
}
//
//
//    public void bulkRem(List<Long> ids, String tags) {
- (NSMutableArray *)bulkRemWithids:(NSMutableArray *)ids tags:(NSString *)tags
{
//        bulkAdd(ids, tags, false);

	return nil;
}
//
//
//    /**
//     * String-based utilities
//     * ***********************************************************
//     */
//
//    /** Parse a string and return a list of tags. */
//    public List<String> split(String tags) {
- (NSMutableArray *)splitWithtags:(NSString *)tags
{
//        ArrayList<String> list = new ArrayList<String>();
//        for (String s : tags.replace('\u3000', ' ').split("\\s")) {
//            if (s.length() > 0) {
//                list.add(s);
//            }
//        }
//        return list;

	return nil;
}
//
//
//    /** Join tags into a single string, with leading and trailing spaces.
//     * 将Tags连接成一个字符串；
//     * */
//    public String join(java.util.Collection<String> tags) {
- (NSString *)joinWithtags:(NSMutableArray *)tags
{
//        if (tags == null || tags.size() == 0) {
//            return "";
//        } else {
//            String joined = TextUtils.join(" ", tags);
//            return String.format(Locale.US, " %s ", joined);
//        }

	return nil;
}
//
//
//    /** Add tags if they don't exist, and canonify */
//    public String addToStr(String addtags, String tags) {
- (NSString *)addToStrWithaddtags:(NSString *)addtags tags:(NSString *)tags
{
//        List<String> currentTags = split(tags);
//        for (String tag : split(addtags)) {
//            if (!inList(tag, currentTags)) {
//                currentTags.add(tag);
//            }
//        }
//        return join(canonify(currentTags));

	return nil;
}
//
//
//    /** Delete tags if they don't exist. */
//    public String remFromStr(String deltags, String tags) {
- (NSString *)remFromStrWithdeltags:(NSString *)deltags tags:(NSString *)tags
{
//        List<String> currentTags = split(tags);
//        for (String tag : split(deltags)) {
//            List<String> remove = new ArrayList<String>();
//            for (String tx: currentTags) {
//                if (tag.equalsIgnoreCase(tx)) {
//                    remove.add(tx);
//                }
//            }
//            // remove them
//            for (String r : remove) {
//                currentTags.remove(r);
//            }
//        }
//        return join(currentTags);

	return nil;
}
//
//
//    /**
//     * List-based utilities
//     * ***********************************************************
//     */
//
//    /** Strip duplicates, adjust case to match existing tags, and sort.
//     *  生成一个没有重复的，排过序的Tag结合，并返回，没有细究，有空可以看看；
//     * */
//    public TreeSet<String> canonify(List<String> tagList) {
- (NSMutableArray *)canonifyWithtagList:(NSMutableArray *)tagList
{
//        // NOTE: The python version creates a list of tags, puts them into a set, then sorts them. The TreeSet
//        // used here already guarantees uniqueness and sort order, so we return it as-is without those steps.
//        TreeSet<String> strippedTags = new TreeSet<String>(String.CASE_INSENSITIVE_ORDER);
//        for (String t : tagList) {
//            String s = sCanonify.matcher(t).replaceAll("");
//            for (String existingTag : mTags.keySet()) {
//                if (s.equalsIgnoreCase(existingTag)) {
//                    s = existingTag;
//                }
//            }
//            strippedTags.add(s);
//        }
//        return strippedTags;

	return nil;
}
//
//
//    /** True if TAG is in TAGS. Ignore case. */
//    public boolean inList(String tag, Iterable<String> tags) {
- (BOOL)inListWithtag:(NSString *)tag tags:(NSObject *)tags
{
//        for (String t : tags) {
//            if (t.equalsIgnoreCase(tag)) {
//                return true;
//            }
//        }
//        return false;

	return nil;
}
//
//
//    /**
//     * Sync handling
//     * ***********************************************************
//     */
//
//    public void beforeUpload() {
- (void)beforeUpload
{
//        for (String k : mTags.keySet()) {
//            mTags.put(k, 0);
//        }
//        save();

//	return nil;
}
//
//    /*
//     * ***********************************************************
//     * The methods below are not in LibAnki.
//     * ***********************************************************
//     */
//
//
//    /** Add a tag to the collection. We use this method instead of exposing mTags publicly.*/
//    public void add(String key, Integer value) {
- (void)addWithkey:(NSString *)key value:(NSInteger)value
{
//        mTags.put(key, value);

//	return nil;
}


@end