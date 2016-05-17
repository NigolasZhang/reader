//
//  Note.h
//  volNotes01
//
//  Created by God on 16/4/29.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface Note : NSObject




//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private long mId;
/**注释*/
@property (nonatomic, assign) NSInteger mId;

//    private String mGuId;
/**注释*/
@property (nonatomic, copy) NSString *mGuId;

//    private JSONObject mModel;
/**注释*/
@property (nonatomic, strong) NSMutableDictionary *mModel;

//    private long mMid;
/**注释*/
@property (nonatomic, assign) NSInteger mMid;

//    private List<String> mTags;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mTags;

//    private String[] mFields;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mFields;

//    private int mFlags;
/**注释*/
@property (nonatomic, assign) NSInteger mFlags;

//    private String mData;
/**注释*/
@property (nonatomic, copy) NSString *mData;

//    private Map<String, Pair<Integer, JSONObject>> mFMap;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableDictionary *mFMap;

//    private long mScm;
/**注释*/
@property (nonatomic, assign) NSInteger mScm;

//    private int mUsn;
/**注释*/
@property (nonatomic, assign) NSInteger mUsn;

//    private long mMod;
/**注释*/
@property (nonatomic, assign) NSInteger mMod;

//    private boolean mNewlyAdded;
/**注释*/
@property (nonatomic, assign) BOOL mNewlyAdded;

//    public Note(Collection col, Long id) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col xid:(NSInteger)xid;

//    public Note(Collection col, JSONObject model) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col model:(NSMutableDictionary *)model;

//    public Note(Collection col, JSONObject model, Long id) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col model:(NSMutableDictionary *)model xid:(NSInteger)xid;

//    public void load() {
/**方法注释*/
- (void)load;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public void flush(Long mod) {
/**方法注释*/
- (void)flushWithmod:(NSInteger)mod;

//    public void flush(Long mod, boolean changeUsn) {
/**方法注释*/
- (void)flushWithmod:(NSInteger)mod changeUsn:(BOOL)changeUsn;

//    public String joinedFields() {
/**方法注释*/
- (NSString *)joinedFields;

//    public ArrayList<Card> cards() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)cards;

//    public JSONObject model() {
/**方法注释*/
- (NSMutableDictionary *)model;

//    public String[] keys() {
/**方法注释*/
- (NSArray *)keys;

//    public String[] values() {
/**方法注释*/
- (NSMutableArray *)values;

//    public String[][] items() {
/**方法注释*/
- (NSMutableArray *)items;

//    private int _fieldOrd(String key) {
/**方法注释*/
- (NSInteger)_fieldOrdWithkey:(NSString *)key;

//    public String getitem(String key) {
/**方法注释*/
- (NSString *)getitemWithkey:(NSString *)key;

//    public void setitem(String key, String value) {
/**方法注释*/
- (void)setitemWithkey:(NSString *)key value:(NSString *)value;

//    public boolean contains(String key) {
/**方法注释*/
- (BOOL)containsWithkey:(NSString *)key;

//    public boolean hasTag(String tag) {
/**方法注释*/
- (BOOL)hasTagWithtag:(NSString *)tag;

//    public String stringTags() {
/**方法注释*/
- (NSString *)stringTags;

//    public void setTagsFromStr(String str) {
/**方法注释*/
- (void)setTagsFromStrWithstr:(NSString *)str;

//    public void delTag(String tag) {
/**方法注释*/
- (void)delTagWithtag:(NSString *)tag;

//    public void addTag(String tag) {
/**方法注释*/
- (void)addTagWithtag:(NSString *)tag;

//    public Integer dupeOrEmpty() {
/**方法注释*/
- (NSInteger)dupeOrEmpty;

//    private void _preFlush() {
/**方法注释*/
- (void)_preFlush;

//    private void _postFlush() {
/**方法注释*/
- (void)_postFlush;

//    public long getMid() {
/**方法注释*/
- (NSInteger)getMid;

//    public long getId() {
/**方法注释*/
- (NSInteger)getId;

//    public Collection getCol() {
/**方法注释*/
- (XCollection *)getCol;

//    public String getSFld() {
/**方法注释*/
- (NSString *)getSFld;

//    public String[] getFields() {
/**方法注释*/
- (NSMutableArray *)getFields;

//    public void setField(int index, String value) {
/**方法注释*/
- (void)setFieldWithindex:(NSInteger)index value:(NSString *)value;

//    public long getMod() {
/**方法注释*/
- (NSInteger)getMod;

//    public Note clone() {
/**方法注释*/
- (Note *)copy;

//    public List<String> getTags() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)getTags;





@end
