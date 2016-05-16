//
//  Tags.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface Tags : NSObject




//    private static final Pattern sCanonify = Pattern.compile("[\"']");
/**常量注释*/
//static Pattern * const sCanonify = Pattern.compile("[\"']");

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private TreeMap<String, Integer> mTags = new TreeMap<String, Integer>();
/**方法注释这个方法有泛型，注意啦！*///懒加载
@property (nonatomic, strong) NSMutableDictionary *mTags;

//    private boolean mChanged;
/**注释*/
@property (nonatomic, assign) BOOL mChanged;

//    public Tags(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public void load(String json) {
/**方法注释*/
- (void)loadWithjson:(NSString *)json;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public void register(Iterable<String> tags) {
/**方法注释这个方法有泛型，注意啦！*///Iterable
- (void)registerWithtags:(NSObject *)tags;

//    public void register(Iterable<String> tags, Integer usn) {
/**方法注释这个方法有泛型，注意啦！*///Iterable
- (void)registerWithtags:(NSObject *)tags usn:(NSInteger)usn;

//    public List<String> all() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)all;

//    public void registerNotes() {
/**方法注释*/
- (void)registerNotes;

//    public void registerNotes(long[] nids) {
/**方法注释*/
- (void)registerNotesWithnids:(NSMutableArray *)nids;

//    public Set<Map.Entry<String, Integer>> allItems() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)allItems;

//    public void save() {
/**方法注释*/
- (void)save;

//    public ArrayList<String> byDeck(long did, boolean children) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)byDeckWithdid:(NSInteger)did children:(BOOL)children;

//    public void bulkAdd(List<Long> ids, String tags) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)bulkAddWithids:(NSMutableArray *)ids tags:(NSString *)tags;

//    public void bulkAdd(List<Long> ids, String tags, boolean add) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)bulkAddWithids:(NSMutableArray *)ids tags:(NSString *)tags add:(BOOL)add;

//    public void bulkRem(List<Long> ids, String tags) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)bulkRemWithids:(NSMutableArray *)ids tags:(NSString *)tags;

//    public List<String> split(String tags) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)splitWithtags:(NSString *)tags;

//    public String join(java.util.Collection<String> tags) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSString *)joinWithtags:(NSMutableArray *)tags;

//    public String addToStr(String addtags, String tags) {
/**方法注释*/
- (NSString *)addToStrWithaddtags:(NSString *)addtags tags:(NSString *)tags;

//    public String remFromStr(String deltags, String tags) {
/**方法注释*/
- (NSString *)remFromStrWithdeltags:(NSString *)deltags tags:(NSString *)tags;

//    public TreeSet<String> canonify(List<String> tagList) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)canonifyWithtagList:(NSMutableArray *)tagList;

//    public boolean inList(String tag, Iterable<String> tags) {
/**方法注释这个方法有泛型，注意啦！*///Iterable
- (BOOL)inListWithtag:(NSString *)tag tags:(NSObject *)tags;

//    public void beforeUpload() {
/**方法注释*/
- (void)beforeUpload;



//    public void add(String key, Integer value) {
/**方法注释*/
- (void)addWithkey:(NSString *)key value:(NSInteger)value;




@end
