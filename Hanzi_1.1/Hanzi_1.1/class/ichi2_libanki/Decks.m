#import "Decks.h"
#import "XCollection.h"

#import "Note.h"
#import "Card.h"
#import "Models.h"
#import "Media.h"
#import "Tags.h"
#import "Sched.h"
#import "AnkiDb.h"


@implementation Decks

//
//
//    private Collection mCol;
//    private HashMap<Long, JSONObject> mDecks;
//    private HashMap<Long, JSONObject> mDconf;
//    private boolean mChanged;
//
//
//    /**
//     * Registry save/load
//     * ***********************************************************
//     */
//
//    public Decks(Collection col) {
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
//    public void load(String decks, String dconf) {
- (void)loadWithdecks:(NSString *)decks dconf:(NSString *)dconf
{
//        mDecks = new HashMap<>();
//        mDconf = new HashMap<>();
//        try {
//            JSONObject decksarray = new JSONObject(decks);
//            JSONArray ids = decksarray.names();
//            for (int i = 0; i < ids.length(); i++) {
//                String id = ids.getString(i);
//                JSONObject o = decksarray.getJSONObject(id);
//                long longId = Long.parseLong(id);
//                mDecks.put(longId, o);
//            }
//            JSONObject confarray = new JSONObject(dconf);
//            ids = confarray.names();
//            for (int i = 0; ids != null && i < ids.length(); i++) {
//                String id = ids.getString(i);
//                mDconf.put(Long.parseLong(id), confarray.getJSONObject(id));
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        mChanged = false;
    //------------------------
    
        //------------------------
    
            _mDecks = [NSMutableDictionary dictionary];
            _mDconf = [NSMutableDictionary dictionary];
    
    // 1. 解析dconf
    NSMutableDictionary *decksarray = [NSJSONSerialization JSONObjectWithData:[decks dataUsingEncoding:NSUTF8StringEncoding]options:NSJSONReadingMutableLeaves error:nil];
    NSArray *ids = [decksarray allKeys];
    
    for (int i = 0; i<ids.count; i++) {
        
        NSString *xid = ids[i];
        NSMutableArray *o = [decksarray objectForKey:xid];
        
        NSNumber *longId = xid;
        
        [_mDecks setObject:longId forKey:o];
    }
    // 2. 解析dconf
    NSMutableDictionary *confarray = [NSJSONSerialization JSONObjectWithData:[dconf dataUsingEncoding:NSUTF8StringEncoding]options:NSJSONReadingMutableLeaves error:nil];
    NSArray *ids1 = [confarray allKeys];
    for (int j = 0; j<ids1.count; j++) {
        NSString *xid = ids[j];
        NSMutableArray *o = [confarray objectForKey:xid];
        
        NSNumber *longId = xid;
        
        [_mDconf setObject:longId forKey:o];
    }
    // 3. 初始化改变
    _mChanged = false;
   
}
//
//    // 保存牌组
//    public void save() {
- (void)save
{
//        save(null);

	
}
//
//
//    /**
//     * Can be called with either a deck or a deck configuration.
//     */
//    public void save(JSONObject g) {
- (void)saveWithg:(NSMutableDictionary *)g
{
//        if (g != null) {
//            try {
//                g.put("mod", Utils.intNow());
//                g.put("usn", mCol.usn());
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        mChanged = true;

	
}
//
//
//    public void flush() {
- (void)flush
{
//        ContentValues values = new ContentValues();
//        if (mChanged) {
//            try {
//                JSONObject decksarray = new JSONObject();
//                for (Map.Entry<Long, JSONObject> d : mDecks.entrySet()) {
//                    decksarray.put(Long.toString(d.getKey()), d.getValue());
//                }
//                values.put("decks", Utils.jsonToString(decksarray));
//                JSONObject confarray = new JSONObject();
//                for (Map.Entry<Long, JSONObject> d : mDconf.entrySet()) {
//                    confarray.put(Long.toString(d.getKey()), d.getValue());
//                }
//                values.put("dconf", Utils.jsonToString(confarray));
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//            mCol.getDb().update("col", values);
//            mChanged = false;
//        }

	
}
//
//
//    /**
//     * Deck save/load
//     * ***********************************************************
//     */
//
//    public Long id(String name) {
- (NSInteger)idWithname:(NSString *)name
{
//        return id(name, true);

	return nil;
}
//
//
//    public Long id(String name, boolean create) {
- (NSInteger)idWithname:(NSString *)name create:(BOOL)create
{
//        return id(name, create, defaultDeck);

	return nil;
}
//
//
//    public Long id(String name, String type) {
- (NSInteger)idWithname:(NSString *)name type:(NSString *)type
{
//        return id(name, true, type);

	return nil;
}
//
//
//    /**
//     * Add a deck with NAME. Reuse deck if already exists. Return id as int.
//     * 添加一个新牌组，如果这个牌组名字存在，就返回这个牌组的id
//     */
//    public Long id(String name, boolean create, String type) {
- (NSInteger)idWithname:(NSString *)name create:(BOOL)create type:(NSString *)type
{
//        try {
//            name = name.replace("\"", "");
//            for (Map.Entry<Long, JSONObject> g : mDecks.entrySet()) {
//                if (g.getValue().getString("name").equalsIgnoreCase(name)) {
//                    return g.getKey();
//                }
//            }
//            if (!create) {
//                return null;
//            }
//            if (name.contains("::")) {
//                // not top level; ensure all parents exist
//                name = _ensureParents(name);
//            }
//            JSONObject g;
//            long id;
//            g = new JSONObject(type);
//            g.put("name", name);
//            while (true) {
//                id = Utils.intNow(1000);
//                if (!mDecks.containsKey(id)) {
//                    break;
//                }
//            }
//            g.put("id", id);
//            mDecks.put(id, g);
//            save(g);
//            maybeAddToActive();
//            //runHook("newDeck"); // TODO
//            return id;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//    // 删除一个牌组
//    public void rem(long did) {
- (void)remWithdid:(NSInteger)did
{
//        rem(did, false);

	
}
//
//    // 删除一个牌组
//    public void rem(long did, boolean cardsToo) {
- (void)remWithdid:(NSInteger)did cardsToo:(BOOL)cardsToo
{
//        rem(did, cardsToo, true);

	
}
//
//
//    /**
//     * Remove the deck. If cardsToo, delete any cards inside.
//     * 删除一个牌组，是否将它的卡片都删掉，是否将它的子牌组都删掉；
//     */
//    public void rem(long did, boolean cardsToo, boolean childrenToo) {
- (void)remWithdid:(NSInteger)did cardsToo:(BOOL)cardsToo childrenToo:(BOOL)childrenToo
{
//        try {
//            if (did == 1) {
//            	// we won't allow the default deck to be deleted, but if it's a
//            	// child of an existing deck then it needs to be renamed
//                // 如果牌组的id是1，将他的名字改成default
//            	JSONObject deck = get(did);
//            	if (deck.getString("name").contains("::")) {
//            		deck.put("name", "Default");
//            		save(deck);
//            	}
//                return;
//            }
//            // log the removal regardless of whether we have the deck or not
//            mCol._logRem(new long[] { did }, Consts.REM_DECK);
//            // do nothing else if doesn't exist
//            if (!mDecks.containsKey(did)) {
//                return;
//            }
//            JSONObject deck = get(did);
//            if (deck.getInt("dyn") != 0) {
//                // deleting a cramming deck returns cards to their previous deck
//                // rather than deleting the cards
//                mCol.getSched().emptyDyn(did);
//                if (childrenToo) {
//                    for (long id : children(did).values()) {
//                        rem(id, cardsToo);
//                    }
//                }
//            } else {
//                // delete children first
//                if (childrenToo) {
//                    // we don't want to delete children when syncing
//                    for (long id : children(did).values()) {
//                        rem(id, cardsToo);
//                    }
//                }
//                // delete cards too?
//                if (cardsToo) {
//                    // don't use cids(), as we want cards in cram decks too
//                    ArrayList<Long> cids = mCol.getDb().queryColumn(Long.class,
//                            "SELECT id FROM cards WHERE did = " + did + " OR odid = " + did, 0);
//                    mCol.remCards(Utils.arrayList2array(cids));
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        // delete the deck and add a grave
//        mDecks.remove(did);
//        // ensure we have an active deck
//        if (active().contains(did)) {
//            select(mDecks.keySet().iterator().next());
//        }
//        save();

	
}
//
//
//    public ArrayList<String> allNames() {
- (NSMutableArray *)allNames
{
//        return allNames(true);

	return nil;
}
//
//
//    /**
//     * An unsorted list of all deck names.
//     * 返回一个牌组集合，牌组的名字没有排序；
//     */
//    public ArrayList<String> allNames(boolean dyn) {
- (NSMutableArray *)allNamesWithdyn:(BOOL)dyn
{
//        ArrayList<String> list = new ArrayList<>();
//        try {
//            if (dyn) {
//                for (JSONObject x : mDecks.values()) {
//                    list.add(x.getString("name"));
//                }
//            } else {
//                for (JSONObject x : mDecks.values()) {
//                    if (x.getInt("dyn") == 0) {
//                        list.add(x.getString("name"));
//                    }
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        return list;

	return nil;
}
//
//
//    /**
//     * A list of all decks.
//     * 返回所有排序的集合；
//     */
//    public ArrayList<JSONObject> all() {
- (NSMutableArray *)all
{
//        ArrayList<JSONObject> decks = new ArrayList<>();
//        for (JSONObject deck : mDecks.values()) {
//            decks.add(deck);
//        }
//        return decks;

	return nil;
}
//
//
//    /**
//     * Return the same deck list from all() but sorted using a comparator that ensures the same
//     * sorting order for decks as the desktop client.
//     *
//     * This method does not exist in the original python module but *must* be used for any user
//     * interface components that display a deck list to ensure the ordering is consistent.
//     * 返回所有的牌组，这个牌组的名字是排过序的；
//     */
//    public ArrayList<JSONObject> allSorted() {
- (NSMutableArray *)allSorted
{
//        ArrayList<JSONObject> decks = all();
//        Collections.sort(decks, new Comparator<JSONObject>() {
//            @Override
//            public int compare(JSONObject lhs, JSONObject rhs) {
//                try {
//                    return lhs.getString("name").compareTo(rhs.getString("name"));
//                } catch (JSONException e) {
//                    throw new RuntimeException(e);
//                }
//            }
//        });
//        return decks;

	return nil;
}

//compare-lhs-rhs这个方法找不到，您自己匹配吧！
//
//    // 返回所有牌组的id数组；
//    public Long[] allIds() {
- (NSMutableArray *)allIds
{
//        return mDecks.keySet().toArray(new Long[mDecks.keySet().size()]);

	return nil;
}
//
//    // collpase是塌陷，折叠的意思，牌组的json文件中有这个属性，具体意思暂时不清楚；
//    public void collpase(long did) {
- (void)collpaseWithdid:(NSInteger)did
{
//        try {
//            JSONObject deck = get(did);
//            deck.put("collapsed", !deck.getBoolean("collapsed"));
//            save(deck);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//
//    public void collapseBrowser(long did) {
- (void)collapseBrowserWithdid:(NSInteger)did
{
//        try {
//            JSONObject deck = get(did);
//            boolean collapsed = deck.optBoolean("browserCollapsed", false);
//            deck.put("browserCollapsed", !collapsed);
//            save(deck);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//
//    /**
//     * Return the number of decks.
//     * // 返回牌组的总数
//     */
//    public int count() {
- (NSInteger)count
{
//        return mDecks.size();

	return nil;
}
//
//    // 通过牌组id取出牌组；
//    public JSONObject get(long did) {
- (NSMutableDictionary *)getWithdid:(NSInteger)did
{
//        return get(did, true);

	return nil;
}
//
//    // 通过牌组id取出牌组；
//    public JSONObject get(long did, boolean _default) {
- (NSMutableDictionary *)getWithdid:(NSInteger)did _default:(BOOL)_default
{
//        if (mDecks.containsKey(did)) {
//            return mDecks.get(did);
//        } else if (_default) {
//            return mDecks.get(1l);
//        } else {
//            return null;
//        }

	return nil;
}
//
//
//    /**
//     * Get deck with NAME.通过名字获取牌组；
//     */
//    public JSONObject byName(String name) {
- (NSMutableDictionary *)byNameWithname:(NSString *)name
{
//		try {
//			for (JSONObject m : mDecks.values()) {
//				if (m.get("name").equals(name)) {
//					return m;
//				}
//			}
//		} catch (JSONException e) {
//			throw new RuntimeException(e);
//		}
//		return null;

	return nil;
}
//
//
//    /**
//     * 添加或更新一个存在的牌组；
//     * Add or update an existing deck. Used for syncing and merging.
//     */
//    public void update(JSONObject g) {
- (void)updateWithg:(NSMutableDictionary *)g
{
//        try {
//            mDecks.put(g.getLong("id"), g);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        maybeAddToActive();
//        // mark registry changed, but don't bump mod time
//        save();

	
}
//
//
//    /**
//     * Rename deck prefix to NAME if not exists. Updates children.
//     * 重命名一个牌组名的前缀，如果她有子牌组，则更新它的子牌组；
//     */
//    public void rename(JSONObject g, String newName) throws DeckRenameException {
- (void)renameWithg:(NSMutableDictionary *)g newName:(NSString *)newName
{
//        // make sure target node doesn't already exist
//        if (allNames().contains(newName)) {
//            throw new DeckRenameException(DeckRenameException.ALREADY_EXISTS);
//        }
//        try {
//            // ensure we have parents
//            newName = _ensureParents(newName);
//            // make sure we're not nesting under a filtered deck
//            if (newName.contains("::")) {
//                List<String> parts = Arrays.asList(newName.split("::", -1));
//                String newParent = TextUtils.join("::", parts.subList(0, parts.size() - 1));
//                if (byName(newParent).getInt("dyn") != 0) {
//                    throw new DeckRenameException(DeckRenameException.FILTERED_NOSUBDEKCS);
//                }
//            }
//            // rename children
//            String oldName = g.getString("name");
//            for (JSONObject grp : all()) {
//                if (grp.getString("name").startsWith(oldName + "::")) {
//                    // In Java, String.replaceFirst consumes a regex so we need to quote the pattern to be safe
//                    grp.put("name", grp.getString("name").replaceFirst(Pattern.quote(oldName + "::"),
//                            newName + "::"));
//                    save(grp);
//                }
//            }
//            // adjust name
//            g.put("name", newName);
//            // ensure we have parents again, as we may have renamed parent->child
//            newName = _ensureParents(newName);
//            save(g);
//            // renaming may have altered active did order
//            maybeAddToActive();
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//    // 重命名那些拖拽的，或是下拉的，不很明白，暂时放在这里；
//    public void renameForDragAndDrop(Long draggedDeckDid, Long ontoDeckDid) throws DeckRenameException {
- (void)renameForDragAndDropWithdraggedDeckDid:(NSInteger)draggedDeckDid ontoDeckDid:(NSInteger)ontoDeckDid
{
//        try {
//            JSONObject draggedDeck = get(draggedDeckDid);
//            String draggedDeckName = draggedDeck.getString("name");
//            String ontoDeckName = get(ontoDeckDid).getString("name");
//
//            if (ontoDeckDid == null) {
//                if (_path(draggedDeckName).size() > 1) {
//                    rename(draggedDeck, _basename(draggedDeckName));
//                }
//            } else if (_canDragAndDrop(draggedDeckName, ontoDeckName)) {
//                draggedDeck = get(draggedDeckDid);
//                draggedDeckName = draggedDeck.getString("name");
//                ontoDeckName = get(ontoDeckDid).getString("name");
//                rename(draggedDeck, ontoDeckName + "::" + _basename(draggedDeckName));
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//    // 这个牌组，是否可以拖拽，不很明白；
//    private boolean _canDragAndDrop(String draggedDeckName, String ontoDeckName) {
- (BOOL)_canDragAndDropWithdraggedDeckName:(NSString *)draggedDeckName ontoDeckName:(NSString *)ontoDeckName
{
//        if (draggedDeckName.equals(ontoDeckName)
//                || _isParent(ontoDeckName, draggedDeckName)
//                || _isAncestor(draggedDeckName, ontoDeckName)) {
//            return false;
//        } else {
//            return true;
//        }

	return nil;
}
//
//    // 它是父牌组吗？
//    private boolean _isParent(String parentDeckName, String childDeckName) {
- (BOOL)_isParentWithparentDeckName:(NSString *)parentDeckName childDeckName:(NSString *)childDeckName
{
//        List<String> parentDeckPath = _path(parentDeckName);
//        parentDeckPath.add(_basename(childDeckName));
//
//        Iterator<String> cpIt = _path(childDeckName).iterator();
//        Iterator<String> ppIt = parentDeckPath.iterator();
//        while (cpIt.hasNext() && ppIt.hasNext()) {
//            if (!cpIt.next().equals(ppIt.next())) {
//                return false;
//            }
//        }
//        return true;

	return nil;
}
//
//    //是祖先牌组吗？即，是跟牌组吗？
//    private boolean _isAncestor(String ancestorDeckName, String descendantDeckName) {
- (BOOL)_isAncestorWithancestorDeckName:(NSString *)ancestorDeckName descendantDeckName:(NSString *)descendantDeckName
{
//        Iterator<String> apIt = _path(ancestorDeckName).iterator();
//        Iterator<String> dpIt = _path(descendantDeckName).iterator();
//        while (apIt.hasNext() && dpIt.hasNext()) {
//            if (!apIt.next().equals(dpIt.next())) {
//                return false;
//            }
//        }
//        return true;

	return nil;
}
//
//    // 返回返回路径；
//    private List<String> _path(String name) {
- (NSMutableArray *)_pathWithname:(NSString *)name
{
//        return Arrays.asList(name.split("::", -1));

	return nil;
}
//    private String _basename(String name) {
- (NSString *)_basenameWithname:(NSString *)name
{
//        List<String> path = _path(name);
//        return path.get(path.size() - 1);

	return nil;
}
//
//
//    /**
//     * Ensure parents exist, and return name with case matching parents.
//     * 确认父存在，返回匹配到的父牌组名字；
//     */
//    public String _ensureParents(String name) {
- (NSString *)_ensureParentsWithname:(NSString *)name
{
//        String s = "";
//        List<String> path = _path(name);
//        if (path.size() < 2) {
//            return name;
//        }
//        for(String p : path.subList(0, path.size() - 1)) {
//            if (TextUtils.isEmpty(s)) {
//                s += p;
//            } else {
//                s += "::" + p;
//            }
//            // fetch or create
//            long did = id(s);
//            // get original case
//            s = name(did);
//        }
//        name = s + "::" + path.get(path.size() - 1);
//        return name;

	return nil;
}
//
//
//    /**
//     * Deck configurations
//     * ***********************************************************
//     */
//
//
//    /**
//     * A list of all deck config.
//     * 所有牌组的配置文件conf的集合；
//     */
//    public ArrayList<JSONObject> allConf() {
- (NSMutableArray *)allConf
{
//        ArrayList<JSONObject> confs = new ArrayList<>();
//        for (JSONObject c : mDconf.values()) {
//            confs.add(c);
//        }
//        return confs;

	return nil;
}
//
//    // 获取输入牌组did对应的配置信息，dconf
//    public JSONObject confForDid(long did) {
- (NSMutableDictionary *)confForDidWithdid:(NSInteger)did
{
//        JSONObject deck = get(did, false);
//        assert deck != null;
//        if (deck.has("conf")) {
//            try {
//                // 获取dconf,
//                JSONObject conf = getConf(deck.getLong("conf"));
//                conf.put("dyn", 0);
//                return conf;
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        // dynamic decks have embedded conf 动态牌组有内置dconf
//        return deck;

	return nil;
}
//
//
//    public JSONObject getConf(long confId) {
- (NSMutableDictionary *)getConfWithconfId:(NSInteger)confId
{
//        return mDconf.get(confId);

	return nil;
}
//
//    // 更新牌组的配置信息；
//    public void updateConf(JSONObject g) {
- (void)updateConfWithg:(NSMutableDictionary *)g
{
//        try {
//            mDconf.put(g.getLong("id"), g);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        save();

	
}
//
//    // 获得这个牌组的配置信息的id
//    public long confId(String name) {
- (NSInteger)confIdWithname:(NSString *)name
{
//        return confId(name, defaultConf);

	return nil;
}
//
//
//    /**
//     * Create a new configuration and return id.
//     * 创建一个新的牌组配置，并返回它的id;
//     */
//    public long confId(String name, String cloneFrom) {
- (NSInteger)confIdWithname:(NSString *)name cloneFrom:(NSString *)cloneFrom
{
//        JSONObject c;
//        long id;
//        try {
//            c = new JSONObject(cloneFrom);
//            while (true) {
//                id = Utils.intNow(1000);
//                if (!mDconf.containsKey(id)) {
//                    break;
//                }
//            }
//            c.put("id", id);
//            c.put("name", name);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        mDconf.put(id, c);
//        save(c);
//        return id;

	return nil;
}
//
//
//    /**
//     * Remove a configuration and update all decks using it.
//     * 删除一个牌组配置，并更新所有用到它的牌组
//     * @throws ConfirmModSchemaException 
//     */
//    public void remConf(long id) throws ConfirmModSchemaException {
- (void)remConfWithxid:(NSInteger)xid
{
//        assert id != 1;
//        mCol.modSchema(true);
//        mDconf.remove(id);
//        try {
//            for (JSONObject g : all()) {
//                // ignore cram decks
//                if (!g.has("conf")) {
//                    continue;
//                }
//                if (g.getString("conf").equals(Long.toString(id))) {
//                    g.put("conf", 1);
//                    save(g);
//                }
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }


}
//
//    // 设置牌组配置信息；
//    public void setConf(JSONObject grp, long id) {
- (void)setConfWithgrp:(NSMutableDictionary *)grp xid:(NSInteger)xid
{
//        try {
//            grp.put("conf", id);
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        save(grp);

	
}
//
//    // 获得牌组配置信息的id;
//    public List<Long> didsForConf(JSONObject conf) {
- (NSMutableArray *)didsForConfWithconf:(NSMutableDictionary *)conf
{
//        List<Long> dids = new ArrayList<>();
//        try {
//            for(JSONObject deck : mDecks.values()) {
//                if (deck.has("conf") && deck.getLong("conf") == conf.getLong("id")) {
//                    dids.add(deck.getLong("id"));
//                }
//            }
//            return dids;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//    //回复牌组的配置为默认，
//    public void restoreToDefault(JSONObject conf) {
- (void)restoreToDefaultWithconf:(NSMutableDictionary *)conf
{
//        try {
//            int oldOrder = conf.getJSONObject("new").getInt("order");
//            JSONObject _new = new JSONObject(defaultConf);
//            _new.put("id", conf.getLong("id"));
//            _new.put("name", conf.getString("name"));
//            mDconf.put(conf.getLong("id"), _new);
//            save(_new);
//            // if it was previously randomized, resort
//            if (oldOrder == 0) {
//                mCol.getSched().resortConf(_new);
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//
//    /**
//     * Deck utils
//     * ***********************************************************
//     */
//
//    //通过牌组id返回牌组名字；
//    public String name(long did) {
- (NSString *)nameWithdid:(NSInteger)did
{
//        return name(did, false);

	return nil;
}
//
//
//    public String name(long did, boolean _default) {
- (NSString *)nameWithdid:(NSInteger)did _default:(BOOL)_default
{
//        try {
//            JSONObject deck = get(did, _default);
//            if (deck != null) {
//                return deck.getString("name");
//            }
//            return "[no deck]";
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//    //通过牌组id获取它的名字；
//    public String nameOrNone(long did) {
- (NSString *)nameOrNoneWithdid:(NSInteger)did
{
//        JSONObject deck = get(did, false);
//        if (deck != null) {
//            try {
//                return deck.getString("name");
//            } catch (JSONException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        return null;

	return nil;
}
//
//    //重设，或更新某个牌组；
//    public void setDeck(long[] cids, long did) {
- (void)setDeckWithcids:(NSMutableArray *)cids did:(NSInteger)did
{
//        mCol.getDb().execute("update cards set did=?,usn=?,mod=? where id in " + Utils.ids2str(cids),
//                new Object[] { did, mCol.usn(), Utils.intNow() });

	
}
//
//    //重新选择当前牌组，
//    private void maybeAddToActive() {
- (void)maybeAddToActive
{
//        // reselect current deck, or default if current has disappeared
//        JSONObject c = current();
//        try {
//            select(c.getLong("id"));
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//    //获得当前牌组的所有卡片的id值，并以数组形式返回；
//    public Long[] cids(long did) {
- (NSMutableArray *)cidsWithdid:(NSInteger)did
{
//        return cids(did, false);

	return nil;
}
//
//
//    public Long[] cids(long did, boolean children) {
- (NSMutableArray *)cidsWithdid:(NSInteger)did children:(BOOL)children
{
//        if (!children) {
//            return Utils.list2ObjectArray(mCol.getDb().queryColumn(Long.class, "select id from cards where did=" + did, 0));
//        }
//        List<Long> dids = new ArrayList<>();
//        dids.add(did);
//        for(Map.Entry<String, Long> entry : children(did).entrySet()) {
//            dids.add(entry.getValue());
//        }
//        return Utils.list2ObjectArray(mCol.getDb().queryColumn(Long.class,
//                "select id from cards where did in " + Utils.ids2str(Utils.arrayList2array(dids)), 0));

	return nil;
}
//
//    // 覆盖孤儿卡，即它的牌组不在了，但是卡片还在，这时候，就把它的牌组id设置为1；即放入默认牌组；
//    public void recoverOrphans() {
- (void)recoverOrphans
{
//        Long[] dids = allIds();
//        boolean mod = mCol.getDb().getMod();
//        mCol.getDb().execute("update cards set did = 1 where did not in " + Utils.ids2str(dids));
//        mCol.getDb().setMod(mod);

	
}
//
//
//    /**
//     * Deck selection
//     * ***********************************************************
//     */
//
//
//    /**
//     * The currently active dids. Make sure to copy before modifying.
//     * 返回当前活动者的牌组，将这些牌组id，放入一个集合返回
//     */
//    public LinkedList<Long> active() {
- (NSMutableArray *)active
{
//        try {
//            JSONArray ja = mCol.getConf().getJSONArray("activeDecks");
//            LinkedList<Long> result = new LinkedList<>();
//            for (int i = 0; i < ja.length(); i++) {
//                result.add(ja.getLong(i));
//            }
//            return result;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//
//    /**
//     * The currently selected did.
//     * 返回当前选择的牌组的id;
//     */
//    public long selected() {
- (NSInteger)selected
{
//        try {
//            return mCol.getConf().getLong("curDeck");
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//    //放回当前的牌组的内容；json描述；
//    public JSONObject current() {
- (NSMutableDictionary *)current
{
//        return get(selected());

	return nil;
}
//
//
//    /**
//     * Select a new branch.
//     * 选择一个牌组；
//     */
//    public void select(long did) {
- (void)selectWithdid:(NSInteger)did
{
//        try {
//            String name = mDecks.get(did).getString("name");
//
//            // current deck
//            mCol.getConf().put("curDeck", Long.toString(did));
//            // and active decks (current + all children)
//            TreeMap<String, Long> actv = children(did); // Note: TreeMap is already sorted
//            actv.put(name, did);
//            JSONArray ja = new JSONArray();
//            for (Long n : actv.values()) {
//                ja.put(n);
//            }
//            mCol.getConf().put("activeDecks", ja);
//            mChanged = true;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	
}
//
//
//    /**
//     * All children of did as nodes of (key:name, value:id)
//     * 返回给定牌组的所有子牌组；
//     *
//     * TODO: There is likely no need for this collection to be a TreeMap. This method should not
//     * need to sort on behalf of select().
//     */
//    public TreeMap<String, Long> children(long did) {
- (NSMutableDictionary *)childrenWithdid:(NSInteger)did
{
//        String name;
//        try {
//            name = get(did).getString("name");
//            TreeMap<String, Long> actv = new TreeMap<>();
//            for (JSONObject g : all()) {
//                if (g.getString("name").startsWith(name + "::")) {
//                    actv.put(g.getString("name"), g.getLong("id"));
//                }
//            }
//            return actv;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//     */
//    public List<JSONObject> parents(long did) {
- (NSMutableArray *)parentsWithdid:(NSInteger)did
{
//        // get parent and grandparent names
//        List<String> parents = new ArrayList<>();
//        try {
//            List<String> parts = Arrays.asList(get(did).getString("name").split("::", -1));
//            for (String part : parts.subList(0, parts.size() - 1)) {
//                if (parents.size() == 0) {
//                    parents.add(part);
//                } else {
//                    parents.add(parents.get(parents.size() - 1) + "::" + part);
//                }
//            }
//            // convert to objects
//            // 如果did的名字是 aa::bb::cc::dd
//            // 则这时候parents 就是{aa, aa::bb, aa::bb::cc}
//            List<JSONObject> oParents = new ArrayList<>();
//            for (int i = 0; i < parents.size(); i++) {
//                oParents.add(i, get(id(parents.get(i))));
//            }
//            return oParents;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//
//    /**
//     * Sync handling
//     * 更新前的处理工作；
//     * ***********************************************************
//     */
//
//
//    public void beforeUpload() {
- (void)beforeUpload
{
//        try {
//            for (JSONObject d : all()) {
//                d.put("usn", 0);
//            }
//            for (JSONObject c : allConf()) {
//                c.put("usn", 0);
//            }
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }
//        save();

	
}
//
//
//    /**
//     * Dynamic decks
//     ***************************************************************/
//
//
//    /**
//     * Return a new dynamic deck and set it as the current deck.
//     * 返回一个新的动态牌组，有称为过滤牌组
//     */
//    public long newDyn(String name) {
- (NSInteger)newDynWithname:(NSString *)name
{
//        long did = id(name, defaultDynamicDeck);
//        select(did);
//        return did;

	return nil;
}
//
//    //这个牌组是动态的吗？是过滤的吗？
//    public boolean isDyn(long did) {
- (BOOL)isDynWithdid:(NSInteger)did
{
//        try {
//            return get(did).getInt("dyn") != 0;
//        } catch (JSONException e) {
//            throw new RuntimeException(e);
//        }

	return nil;
}
//
//
//    /*
//    * ***********************************************************
//    * The methods below are not in LibAnki.
//    * ***********************************************************
//    */
//
//    //获得当前牌组的描述信息；
//    public String getActualDescription() {
- (NSString *)getActualDescription
{
//    	return current().optString("desc","");

	return nil;
}
//
//
//    public HashMap<Long, JSONObject> getDecks() {
- (NSMutableDictionary *)getDecks
{
//        return mDecks;

	return nil;
}


@end