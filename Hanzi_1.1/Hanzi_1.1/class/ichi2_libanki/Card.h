//
//  Card.h
//  hanzi_v0.1
//
//  Created by God on 16/5/15.
//  Copyright © 2016年 God. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class Note;

@interface Card : NSObject




//    public static final int TYPE_NEW = 0;
/**常量注释*/
//static NSInteger const TYPE_NEW = 0;

//    public static final int TYPE_LRN = 1;
/**常量注释*/
//static NSInteger const TYPE_LRN = 1;

//    public static final int TYPE_REV = 2;
/**常量注释*/
//static NSInteger const TYPE_REV = 2;

//    public static final Set<String> SKIP_PRINT = new HashSet<String>(Arrays.asList("SKIP_PRINT", "$assertionsDisabled", "TYPE_LRN",
/**常量注释--有点问题，待解决*/
//static NSMutableArray *const SKIP_PRINT =;



//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private double mTimerStarted;
/**注释*/
@property (nonatomic, strong) NSNumber *mTimerStarted;

//    private double mElapsedTime;
/**注释*/
@property (nonatomic, strong) NSNumber *mElapsedTime;

//    private long mId;
/**注释*/
@property (nonatomic, assign) NSInteger mId;

//    private long mNid;
/**注释*/
@property (nonatomic, assign) NSInteger mNid;

//    private long mDid;
/**注释*/
@property (nonatomic, assign) NSInteger mDid;

//    private int mOrd;
/**注释*/
@property (nonatomic, assign) NSInteger mOrd;

//    private long mMod;
/**注释*/
@property (nonatomic, assign) NSInteger mMod;

//    private int mUsn;
/**注释*/
@property (nonatomic, assign) NSInteger mUsn;

//    private int mType;
/**注释*/
@property (nonatomic, assign) NSInteger mType;

//    private int mQueue;
/**注释*/
@property (nonatomic, assign) NSInteger mQueue;

//    private long mDue;
/**注释*/
@property (nonatomic, assign) NSInteger mDue;

//    private int mIvl;
/**注释*/
@property (nonatomic, assign) NSInteger mIvl;

//    private int mFactor;
/**注释*/
@property (nonatomic, assign) NSInteger mFactor;

//    private int mReps;
/**注释*/
@property (nonatomic, assign) NSInteger mReps;

//    private int mLapses;
/**注释*/
@property (nonatomic, assign) NSInteger mLapses;

//    private int mLeft;
/**注释*/
@property (nonatomic, assign) NSInteger mLeft;

//    private long mODue;
/**注释*/
@property (nonatomic, assign) NSInteger mODue;

//    private long mODid;
/**注释*/
@property (nonatomic, assign) NSInteger mODid;

//    private int mFlags;
/**注释*/
@property (nonatomic, assign) NSInteger mFlags;

//    private String mData;
/**注释*/
@property (nonatomic, copy) NSString *mData;

//    private HashMap<String, String> mQA;
/**注释*/
@property (nonatomic, strong) NSMutableDictionary *mQA;

//    private Note mNote;
/**注释*/
@property (nonatomic, strong) Note *mNote;

//    private boolean mWasNew;
/**注释*/
@property (nonatomic, assign) BOOL mWasNew;

//    private int mLastIvl;
/**注释*/
@property (nonatomic, assign) NSInteger mLastIvl;

//    public Card(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public Card(Collection col, Long id) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col xid:(NSInteger)xid;

//    public void load() {
/**方法注释*/
- (void)load;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public void flush(boolean changeModUsn) {
/**方法注释*/
- (void)flushWithchangeModUsn:(BOOL)changeModUsn;

//    public void flushSched() {
/**方法注释*/
- (void)flushSched;

//    public String q() {
/**方法注释*/
- (NSString *)q;

//    public String q(boolean reload) {
/**方法注释*/
- (NSString *)qWithreload:(BOOL)reload;

//    public String q(boolean reload, boolean browser) {
/**方法注释*/
- (NSString *)qWithreload:(BOOL)reload browser:(BOOL)browser;

//    public String a() {
/**方法注释*/
- (NSString *)a;

//    public String css() {
/**方法注释*/
- (NSString *)css;

//    public HashMap<String, String> _getQA() {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableDictionary *)_getQA;

//    public HashMap<String, String> _getQA(boolean reload) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableDictionary *)_getQAWithreload:(BOOL)reload;

//    public HashMap<String, String> _getQA(boolean reload, boolean browser) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableDictionary *)_getQAWithreload:(BOOL)reload browser:(BOOL)browser;



//    public Note note() {
/**方法注释*/
- (Note *)note;

//    public Note note(boolean reload) {
/**方法注释*/
- (Note *)noteWithreload:(BOOL)reload;

//    public JSONObject model() {
/**方法注释*/
- (NSMutableDictionary *)model;

//    public JSONObject template() {
/**方法注释*/
- (NSMutableDictionary *)template;

//    public void startTimer() {
/**方法注释*/
- (void)startTimer;

//    public int timeLimit() {
/**方法注释*/
- (NSInteger)timeLimit;

//    public boolean shouldShowTimer() {
/**方法注释*/
- (BOOL)shouldShowTimer;

//    public int timeTaken() {
/**方法注释*/
- (NSInteger)timeTaken;

//    public boolean isEmpty() {
/**方法注释*/
- (BOOL)isEmpty;

//    public String qSimple() {
/**方法注释*/
- (NSString *)qSimple;

//    public String getPureAnswer() {
/**方法注释*/
- (NSString *)getPureAnswer;

//    public void stopTimer() {
/**方法注释*/
- (void)stopTimer;

//    public void resumeTimer() {
/**方法注释*/
- (void)resumeTimer;

//    public void setTimerStarted(double timeStarted){ mTimerStarted = timeStarted; }
/**方法注释*/
- (void)setTimerStartedWithtimeStarted:(NSNumber *)timeStarted;

//    public long getId() {
/**方法注释*/
- (NSInteger)getId;

//    public void setMod(long mod) {
/**方法注释*/
- (void)setModWithmod:(NSInteger)mod;

//    public void setUsn(int usn) {
/**方法注释*/
- (void)setUsnWithusn:(NSInteger)usn;

//    public long getNid() {
/**方法注释*/
- (NSInteger)getNid;

//    public int getType() {
/**方法注释*/
- (NSInteger)getType;

//    public void setType(int type) {
/**方法注释*/
- (void)setTypeWithtype:(NSInteger)type;

//    public void setLeft(int left) {
/**方法注释*/
- (void)setLeftWithleft:(NSInteger)left;

//    public int getLeft() {
/**方法注释*/
- (NSInteger)getLeft;

//    public int getQueue() {
/**方法注释*/
- (NSInteger)getQueue;

//    public void setQueue(int queue) {
/**方法注释*/
- (void)setQueueWithqueue:(NSInteger)queue;

//    public long getODue() {
/**方法注释*/
- (NSInteger)getODue;

//    public void setODid(long odid) {
/**方法注释*/
- (void)setODidWithodid:(NSInteger)odid;

//    public long getODid() {
/**方法注释*/
- (NSInteger)getODid;

//    public void setODue(long odue) {
/**方法注释*/
- (void)setODueWithodue:(NSInteger)odue;

//    public long getDue() {
/**方法注释*/
- (NSInteger)getDue;

//    public void setDue(long due) {
/**方法注释*/
- (void)setDueWithdue:(NSInteger)due;

//    public int getIvl() {
/**方法注释*/
- (NSInteger)getIvl;

//    public void setIvl(int ivl) {
/**方法注释*/
- (void)setIvlWithivl:(NSInteger)ivl;

//    public int getFactor() {
/**方法注释*/
- (NSInteger)getFactor;

//    public void setFactor(int factor) {
/**方法注释*/
- (void)setFactorWithfactor:(NSInteger)factor;

//    public int getReps() {
/**方法注释*/
- (NSInteger)getReps;

//    public int setReps(int reps) {
/**方法注释*/
- (NSInteger)setRepsWithreps:(NSInteger)reps;

//    public int getLapses() {
/**方法注释*/
- (NSInteger)getLapses;

//    public void setLapses(int lapses) {
/**方法注释*/
- (void)setLapsesWithlapses:(NSInteger)lapses;

//    public void setNid(long nid) {
/**方法注释*/
- (void)setNidWithnid:(NSInteger)nid;

//    public void setOrd(int ord) {
/**方法注释*/
- (void)setOrdWithord:(NSInteger)ord;

//    public int getOrd() {
/**方法注释*/
- (NSInteger)getOrd;

//    public void setDid(long did) {
/**方法注释*/
- (void)setDidWithdid:(NSInteger)did;

//    public long getDid() {
/**方法注释*/
- (NSInteger)getDid;

//    public boolean getWasNew() {
/**方法注释*/
- (BOOL)getWasNew;

//    public void setWasNew(boolean wasNew) {
/**方法注释*/
- (void)setWasNewWithwasNew:(BOOL)wasNew;

//    public int getLastIvl() {
/**方法注释*/
- (NSInteger)getLastIvl;

//    public void setLastIvl(int ivl) {
/**方法注释*/
- (void)setLastIvlWithivl:(NSInteger)ivl;

//    public Collection getCol() {
/**方法注释*/
- (XCollection *)getCol;

//    public void setCol(Collection col) {
/**方法注释*/
- (void)setColWithcol:(XCollection *)col;

//    public boolean showTimer() {
/**方法注释*/
- (BOOL)showTimer;

//    public Card clone() {
/**方法注释*/
- (Card *)copy;

//    public String toString() {
/**方法注释*/
- (NSString *)discription;































































@end
