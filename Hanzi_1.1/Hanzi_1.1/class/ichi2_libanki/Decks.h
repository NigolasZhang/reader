//
//  Decks.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class AnkiDb;
@class Media;
@class Decks;
@class Models;
@class Tags;
@class Sched;
@class Note;
@class Card;


@interface Decks : NSObject


//    public static final String defaultDeck = ""
/**常量注释*/
//static NSString * const defaultDeck = ""

//    private static final String defaultDynamicDeck = ""
/**常量注释*/
//static NSString * const defaultDynamicDeck = ""

//    public static final String defaultConf = ""
/**常量注释*/
//static NSString * const defaultConf = ""



//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private HashMap<Long, JSONObject> mDecks;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableDictionary *mDecks;

//    private HashMap<Long, JSONObject> mDconf;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableDictionary *mDconf;

//    private boolean mChanged;
/**注释*/
@property (nonatomic, assign) BOOL mChanged;

//    public Decks(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public void load(String decks, String dconf) {
/**方法注释*/
- (void)loadWithdecks:(NSString *)decks dconf:(NSString *)dconf;

//    public void save() {
/**方法注释*/
- (void)save;

//    public void save(JSONObject g) {
/**方法注释*/
- (void)saveWithg:(NSMutableDictionary *)g;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public Long id(String name) {
/**方法注释*/
- (NSInteger)idWithname:(NSString *)name;

//    public Long id(String name, boolean create) {
/**方法注释*/
- (NSInteger)idWithname:(NSString *)name create:(BOOL)create;

//    public Long id(String name, String type) {
/**方法注释*/
- (NSInteger)idWithname:(NSString *)name type:(NSString *)type;

//    public Long id(String name, boolean create, String type) {
/**方法注释*/
- (NSInteger)idWithname:(NSString *)name create:(BOOL)create type:(NSString *)type;

//    public void rem(long did) {
/**方法注释*/
- (void)remWithdid:(NSInteger)did;

//    public void rem(long did, boolean cardsToo) {
/**方法注释*/
- (void)remWithdid:(NSInteger)did cardsToo:(BOOL)cardsToo;

//    public void rem(long did, boolean cardsToo, boolean childrenToo) {
/**方法注释*/
- (void)remWithdid:(NSInteger)did cardsToo:(BOOL)cardsToo childrenToo:(BOOL)childrenToo;

//    public ArrayList<String> allNames() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)allNames;

//    public ArrayList<String> allNames(boolean dyn) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)allNamesWithdyn:(BOOL)dyn;

//    public ArrayList<JSONObject> all() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)all;

//    public ArrayList<JSONObject> allSorted() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)allSorted;

//            public int compare(JSONObject lhs, JSONObject rhs) {
/**方法注释*/
- (NSInteger)compareWithlhs:(NSMutableDictionary *)lhs rhs:(NSMutableDictionary *)rhs;

//    public Long[] allIds() {
/**方法注释*/
- (NSMutableArray *)allIds;

//    public void collpase(long did) {
/**方法注释*/
- (void)collpaseWithdid:(NSInteger)did;

//    public void collapseBrowser(long did) {
/**方法注释*/
- (void)collapseBrowserWithdid:(NSInteger)did;

//    public int count() {
/**方法注释*/
- (NSInteger)count;

//    public JSONObject get(long did) {
/**方法注释*/
- (NSMutableDictionary *)getWithdid:(NSInteger)did;

//    public JSONObject get(long did, boolean _default) {
/**方法注释*/
- (NSMutableDictionary *)getWithdid:(NSInteger)did _default:(BOOL)_default;

//    public JSONObject byName(String name) {
/**方法注释*/
- (NSMutableDictionary *)byNameWithname:(NSString *)name;

//    public void update(JSONObject g) {
/**方法注释*/
- (void)updateWithg:(NSMutableDictionary *)g;

//    public void rename(JSONObject g, String newName) throws DeckRenameException {
/**方法注释*/
- (void)renameWithg:(NSMutableDictionary *)g newName:(NSString *)newName;

//    public void renameForDragAndDrop(Long draggedDeckDid, Long ontoDeckDid) throws DeckRenameException {
/**方法注释*/
- (void)renameForDragAndDropWithdraggedDeckDid:(NSInteger)draggedDeckDid ontoDeckDid:(NSInteger)ontoDeckDid;

//    private boolean _canDragAndDrop(String draggedDeckName, String ontoDeckName) {
/**方法注释*/
- (BOOL)_canDragAndDropWithdraggedDeckName:(NSString *)draggedDeckName ontoDeckName:(NSString *)ontoDeckName;

//    private boolean _isParent(String parentDeckName, String childDeckName) {
/**方法注释*/
- (BOOL)_isParentWithparentDeckName:(NSString *)parentDeckName childDeckName:(NSString *)childDeckName;

//    private boolean _isAncestor(String ancestorDeckName, String descendantDeckName) {
/**方法注释*/
- (BOOL)_isAncestorWithancestorDeckName:(NSString *)ancestorDeckName descendantDeckName:(NSString *)descendantDeckName;

//    private List<String> _path(String name) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_pathWithname:(NSString *)name;

//    private String _basename(String name) {
/**方法注释*/
- (NSString *)_basenameWithname:(NSString *)name;

//    public String _ensureParents(String name) {
/**方法注释*/
- (NSString *)_ensureParentsWithname:(NSString *)name;

//    public ArrayList<JSONObject> allConf() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)allConf;

//    public JSONObject confForDid(long did) {
/**方法注释*/
- (NSMutableDictionary *)confForDidWithdid:(NSInteger)did;

//    public JSONObject getConf(long confId) {
/**方法注释*/
- (NSMutableDictionary *)getConfWithconfId:(NSInteger)confId;

//    public void updateConf(JSONObject g) {
/**方法注释*/
- (void)updateConfWithg:(NSMutableDictionary *)g;

//    public long confId(String name) {
/**方法注释*/
- (NSInteger)confIdWithname:(NSString *)name;

//    public long confId(String name, String cloneFrom) {
/**方法注释*/
- (NSInteger)confIdWithname:(NSString *)name cloneFrom:(NSString *)cloneFrom;

//    public void remConf(long id) throws ConfirmModSchemaException {
/**方法注释*/
- (void)remConfWithxid:(NSInteger)xid;

//    public void setConf(JSONObject grp, long id) {
/**方法注释*/
- (void)setConfWithgrp:(NSMutableDictionary *)grp xid:(NSInteger)xid;

//    public List<Long> didsForConf(JSONObject conf) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)didsForConfWithconf:(NSMutableDictionary *)conf;

//    public void restoreToDefault(JSONObject conf) {
/**方法注释*/
- (void)restoreToDefaultWithconf:(NSMutableDictionary *)conf;

//    public String name(long did) {
/**方法注释*/
- (NSString *)nameWithdid:(NSInteger)did;

//    public String name(long did, boolean _default) {
/**方法注释*/
- (NSString *)nameWithdid:(NSInteger)did _default:(BOOL)_default;

//    public String nameOrNone(long did) {
/**方法注释*/
- (NSString *)nameOrNoneWithdid:(NSInteger)did;

//    public void setDeck(long[] cids, long did) {
/**方法注释*/
- (void)setDeckWithcids:(NSMutableArray *)cids did:(NSInteger)did;

//    private void maybeAddToActive() {
/**方法注释*/
- (void)maybeAddToActive;

//    public Long[] cids(long did) {
/**方法注释*/
- (NSMutableArray *)cidsWithdid:(NSInteger)did;

//    public Long[] cids(long did, boolean children) {
/**方法注释*/
- (NSMutableArray *)cidsWithdid:(NSInteger)did children:(BOOL)children;

//    public void recoverOrphans() {
/**方法注释*/
- (void)recoverOrphans;

//    public LinkedList<Long> active() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)active;

//    public long selected() {
/**方法注释*/
- (NSInteger)selected;

//    public JSONObject current() {
/**方法注释*/
- (NSMutableDictionary *)current;

//    public void select(long did) {
/**方法注释*/
- (void)selectWithdid:(NSInteger)did;

//    public TreeMap<String, Long> children(long did) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)childrenWithdid:(NSInteger)did;

//    public List<JSONObject> parents(long did) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)parentsWithdid:(NSInteger)did;

//    public void beforeUpload() {
/**方法注释*/
- (void)beforeUpload;

//    public long newDyn(String name) {
/**方法注释*/
- (NSInteger)newDynWithname:(NSString *)name;

//    public boolean isDyn(long did) {
/**方法注释*/
- (BOOL)isDynWithdid:(NSInteger)did;

//    public String getActualDescription() {
/**方法注释*/
- (NSString *)getActualDescription;

//    public HashMap<Long, JSONObject> getDecks() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)getDecks;




@end
