//
//  Sched.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;
@class Card;

@interface Sched : NSObject




//    private static final int[] FACTOR_ADDITION_VALUES = { -150, 0, 150 };
/**常量注释*/
//static NSMutableArray * const FACTOR_ADDITION_VALUES = { -150, 0, 150 };

//    private String mName = "std";
/**注释*/
@property (nonatomic, copy) NSString *mName;

//    private boolean mHaveCustomStudy = true;
/**注释*/
@property (nonatomic, assign) BOOL mHaveCustomStudy;

//    private boolean mSpreadRev = true;
/**注释*/
@property (nonatomic, assign) BOOL mSpreadRev;

//    private boolean mBurySiblingsOnAnswer = true;
/**注释*/
@property (nonatomic, assign) BOOL mBurySiblingsOnAnswer;

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private int mQueueLimit;
/**注释*/
@property (nonatomic, assign) NSInteger mQueueLimit;

//    private int mReportLimit;
/**注释*/
@property (nonatomic, assign) NSInteger mReportLimit;

//    private int mReps;
/**注释*/
@property (nonatomic, assign) NSInteger mReps;

//    private boolean mHaveQueues;
/**注释*/
@property (nonatomic, assign) BOOL mHaveQueues;

//    private int mToday;
/**注释*/
@property (nonatomic, assign) NSInteger mToday;

//    public long mDayCutoff;
/**注释*/
@property (nonatomic, assign) NSInteger mDayCutoff;

//    private int mNewCount;
/**注释*/
@property (nonatomic, assign) NSInteger mNewCount;

//    private int mLrnCount;
/**注释*/
@property (nonatomic, assign) NSInteger mLrnCount;

//    private int mRevCount;
/**注释*/
@property (nonatomic, assign) NSInteger mRevCount;

//    private int mNewCardModulus;
/**注释*/
@property (nonatomic, assign) NSInteger mNewCardModulus;

//    private double[] mEtaCache = new double[] { -1, -1, -1, -1 };
/**注释*/
@property (nonatomic, strong) NSMutableArray *mEtaCache;

//    private final LinkedList<Long> mNewQueue = new LinkedList<Long>();
/**方法注释这个方法有泛型，注意啦！*///懒加载
@property (nonatomic, strong) NSMutableArray *mNewQueue;

//    private final LinkedList<long[]> mLrnQueue = new LinkedList<long[]>();
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mLrnQueue;

//    private final LinkedList<Long> mLrnDayQueue = new LinkedList<Long>();
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mLrnDayQueue;

//    private final LinkedList<Long> mRevQueue = new LinkedList<Long>();
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mRevQueue;

//    private LinkedList<Long> mNewDids;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mNewDids;

//    private LinkedList<Long> mLrnDids;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mLrnDids;

//    private LinkedList<Long> mRevDids;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableArray *mRevDids;

//    private WeakReference<Activity> mContextReference;
/**方法注释这个方法有泛型，注意啦！*///弱指针弱引用
@property (nonatomic, strong) NSMutableArray *mContextReference;

//    public Sched(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public Card getCard() {
/**方法注释*/
- (Card *)getCard;

//    public void reset() {
/**方法注释*/
- (void)reset;

//    public void answerCard(Card card, int ease) {
/**方法注释*/
- (void)answerCardWithcard:(Card *)card ease:(NSInteger)ease;

//    public int[] counts() {
/**方法注释*/
- (NSMutableArray *)counts;

//    public int[] counts(Card card) {
/**方法注释*/
- (NSMutableArray *)countsWithcard:(Card *)card;

//    public int dueForecast() {
/**方法注释*/
- (NSInteger)dueForecast;

//    public int dueForecast(int days) {
/**方法注释*/
- (NSInteger)dueForecastWithdays:(NSInteger)days;

//    public int countIdx(Card card) {
/**方法注释*/
- (NSInteger)countIdxWithcard:(Card *)card;

//    public int answerButtons(Card card) {
/**方法注释*/
- (NSInteger)answerButtonsWithcard:(Card *)card;

//    public void unburyCards() {
/**方法注释*/
- (void)unburyCards;

//    public void unburyCardsForDeck() {
/**方法注释*/
- (void)unburyCardsForDeck;

//    private void _updateStats(Card card, String type) {
/**方法注释*/
- (void)_updateStatsWithcard:(Card *)card type:(NSString *)type;

//    public void _updateStats(Card card, String type, long cnt) {
/**方法注释*/
- (void)_updateStatsWithcard:(Card *)card type:(NSString *)type cnt:(NSInteger)cnt;

//    public void extendLimits(int newc, int rev) {
/**方法注释*/
- (void)extendLimitsWithnewc:(NSInteger)newc rev:(NSInteger)rev;

//    private int _walkingCount(Method limFn, Method cntFn) {
/**方法注释*/
- (NSInteger)_walkingCountWithlimFn:(NSObject *)limFn cntFn:(NSObject *)cntFn;

//    public List<DeckDueTreeNode> deckDueList() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)deckDueList;

//    public List<DeckDueTreeNode> deckDueTree() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)deckDueTree;

//    private List<DeckDueTreeNode> _groupChildren(List<DeckDueTreeNode> grps) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_groupChildrenWithgrps:(NSMutableArray *)grps;

//    private List<DeckDueTreeNode> _groupChildrenMain(List<DeckDueTreeNode> grps) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_groupChildrenMainWithgrps:(NSMutableArray *)grps;

//    private Card _getCard() {
/**方法注释*/
- (Card *)_getCard;

//    private void _resetNewCount() {
/**方法注释*/
- (void)_resetNewCount;

//    private int _cntFnNew(long did, int lim) {
/**方法注释*/
- (NSInteger)_cntFnNewWithdid:(NSInteger)did lim:(NSInteger)lim;

//    private void _resetNew() {
/**方法注释*/
- (void)_resetNew;

//    private boolean _fillNew() {
/**方法注释*/
- (BOOL)_fillNew;

//    private Card _getNewCard() {
/**方法注释*/
- (Card *)_getNewCard;

//    private void _updateNewCardRatio() {
/**方法注释*/
- (void)_updateNewCardRatio;

//    private boolean _timeForNewCard() {
/**方法注释*/
- (BOOL)_timeForNewCard;

//    private int _deckNewLimit(long did) {
/**方法注释*/
- (NSInteger)_deckNewLimitWithdid:(NSInteger)did;

//    private int _deckNewLimit(long did, Method fn) {
/**方法注释*/
- (NSInteger)_deckNewLimitWithdid:(NSInteger)did fn:(NSObject *)fn;

//    public int _newForDeck(long did, int lim) {
/**方法注释*/
- (NSInteger)_newForDeckWithdid:(NSInteger)did lim:(NSInteger)lim;

//    public int _deckNewLimitSingle(JSONObject g) {
/**方法注释*/
- (NSInteger)_deckNewLimitSingleWithg:(NSMutableDictionary *)g;

//    public int totalNewForCurrentDeck() {
/**方法注释*/
- (NSInteger)totalNewForCurrentDeck;

//    private void _resetLrnCount() {
/**方法注释*/
- (void)_resetLrnCount;

//    private void _resetLrn() {
/**方法注释*/
- (void)_resetLrn;

//    private boolean _fillLrn() {
/**方法注释*/
- (BOOL)_fillLrn;


//    private Card _getLrnCard() {
/**方法注释*/
- (Card *)_getLrnCard;

//    private Card _getLrnCard(boolean collapse) {
/**方法注释*/
- (Card *)_getLrnCardWithcollapse:(BOOL)collapse;

//    private boolean _fillLrnDay() {
/**方法注释*/
- (BOOL)_fillLrnDay;

//    private Card _getLrnDayCard() {
/**方法注释*/
- (Card *)_getLrnDayCard;

//    private void _answerLrnCard(Card card, int ease) {
/**方法注释*/
- (void)_answerLrnCardWithcard:(Card *)card ease:(NSInteger)ease;

//    private int _delayForGrade(JSONObject conf, int left) {
/**方法注释*/
- (NSInteger)_delayForGradeWithconf:(NSMutableDictionary *)conf left:(NSInteger)left;

//    private JSONObject _lrnConf(Card card) {
/**方法注释*/
- (NSMutableDictionary *)_lrnConfWithcard:(Card *)card;

//    private void _rescheduleAsRev(Card card, JSONObject conf, boolean early) {
/**方法注释*/
- (void)_rescheduleAsRevWithcard:(Card *)card conf:(NSMutableDictionary *)conf early:(BOOL)early;

//    private int _startingLeft(Card card) {
/**方法注释*/
- (NSInteger)_startingLeftWithcard:(Card *)card;

//    private int _leftToday(JSONArray delays, int left) {
/**方法注释*/
- (NSInteger)_leftTodayWithdelays:(NSMutableArray *)delays left:(NSInteger)left;

//    private int _leftToday(JSONArray delays, int left, long now) {
/**方法注释*/
- (NSInteger)_leftTodayWithdelays:(NSMutableArray *)delays left:(NSInteger)left now:(NSInteger)now;

//    private int _graduatingIvl(Card card, JSONObject conf, boolean early) {
/**方法注释*/
- (NSInteger)_graduatingIvlWithcard:(Card *)card conf:(NSMutableDictionary *)conf early:(BOOL)early;

//    private int _graduatingIvl(Card card, JSONObject conf, boolean early, boolean adj) {
/**方法注释*/
- (NSInteger)_graduatingIvlWithcard:(Card *)card conf:(NSMutableDictionary *)conf early:(BOOL)early adj:(BOOL)adj;

//    private void _rescheduleNew(Card card, JSONObject conf, boolean early) {
/**方法注释*/
- (void)_rescheduleNewWithcard:(Card *)card conf:(NSMutableDictionary *)conf early:(BOOL)early;

//    private void _logLrn(Card card, int ease, JSONObject conf, boolean leaving, int type, int lastLeft) {
/**方法注释*/
- (void)_logLrnWithcard:(Card *)card ease:(NSInteger)ease conf:(NSMutableDictionary *)conf leaving:(BOOL)leaving type:(NSInteger)type lastLeft:(NSInteger)lastLeft;

//    private void log(long id, int usn, int ease, int ivl, int lastIvl, int factor, int timeTaken, int type) {
/**方法注释*/
- (void)logWithxid:(NSInteger)xid usn:(NSInteger)usn ease:(NSInteger)ease ivl:(NSInteger)ivl lastIvl:(NSInteger)lastIvl factor:(NSInteger)factor timeTaken:(NSInteger)timeTaken type:(NSInteger)type;

//    public void removeLrn() {
/**方法注释*/
- (void)removeLrn;

//    private void removeLrn(long[] ids) {
/**方法注释*/
- (void)removeLrnWithids:(NSMutableArray *)ids;

//    private int _lrnForDeck(long did) {
/**方法注释*/
- (NSInteger)_lrnForDeckWithdid:(NSInteger)did;

//    private int _deckRevLimit(long did) {
/**方法注释*/
- (NSInteger)_deckRevLimitWithdid:(NSInteger)did;

//    private int _deckRevLimitSingle(JSONObject d) {
/**方法注释*/
- (NSInteger)_deckRevLimitSingleWithd:(NSMutableDictionary *)d;

//    public int _revForDeck(long did, int lim) {
/**方法注释*/
- (NSInteger)_revForDeckWithdid:(NSInteger)did lim:(NSInteger)lim;

//    private void _resetRevCount() {
/**方法注释*/
- (void)_resetRevCount;

//    private int _cntFnRev(long did, int lim) {
/**方法注释*/
- (NSInteger)_cntFnRevWithdid:(NSInteger)did lim:(NSInteger)lim;

//    private void _resetRev() {
/**方法注释*/
- (void)_resetRev;

//    private boolean _fillRev() {
/**方法注释*/
- (BOOL)_fillRev;

//    private Card _getRevCard() {
/**方法注释*/
- (Card *)_getRevCard;

//    public int totalRevForCurrentDeck() {
/**方法注释*/
- (NSInteger)totalRevForCurrentDeck;

//    private void _answerRevCard(Card card, int ease) {
/**方法注释*/
- (void)_answerRevCardWithcard:(Card *)card ease:(NSInteger)ease;

//    private int _rescheduleLapse(Card card) {
/**方法注释*/
- (NSInteger)_rescheduleLapseWithcard:(Card *)card;

//    private int _nextLapseIvl(Card card, JSONObject conf) {
/**方法注释*/
- (NSInteger)_nextLapseIvlWithcard:(Card *)card conf:(NSMutableDictionary *)conf;

//    private void _rescheduleRev(Card card, int ease) {
/**方法注释*/
- (void)_rescheduleRevWithcard:(Card *)card ease:(NSInteger)ease;

//    private void _logRev(Card card, int ease, int delay) {
/**方法注释*/
- (void)_logRevWithcard:(Card *)card ease:(NSInteger)ease delay:(NSInteger)delay;

//    private int _nextRevIvl(Card card, int ease) {
/**方法注释*/
- (NSInteger)_nextRevIvlWithcard:(Card *)card ease:(NSInteger)ease;

//    private int _fuzzedIvl(int ivl) {
/**方法注释*/
- (NSInteger)_fuzzedIvlWithivl:(NSInteger)ivl;

//    public int[] _fuzzedIvlRange(int ivl) {
/**方法注释*/
- (NSMutableArray *)_fuzzedIvlRangeWithivl:(NSInteger)ivl;

//    private int _constrainedIvl(int ivl, JSONObject conf, double prev) {
/**方法注释*/
- (NSInteger)_constrainedIvlWithivl:(NSInteger)ivl conf:(NSMutableDictionary *)conf prev:(NSNumber *)prev;

//    private long _daysLate(Card card) {
/**方法注释*/
- (NSInteger)_daysLateWithcard:(Card *)card;

//    private void _updateRevIvl(Card card, int ease) {
/**方法注释*/
- (void)_updateRevIvlWithcard:(Card *)card ease:(NSInteger)ease;

//    private int _adjRevIvl(Card card, int idealIvl) {
/**方法注释*/
- (NSInteger)_adjRevIvlWithcard:(Card *)card idealIvl:(NSInteger)idealIvl;

//    public void rebuildDyn() {
/**方法注释*/
- (void)rebuildDyn;

//    public List<Long> rebuildDyn(long did) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)rebuildDynWithdid:(NSInteger)did;

//    private List<Long> _fillDyn(JSONObject deck) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_fillDynWithdeck:(NSMutableDictionary *)deck;

//    public void emptyDyn(long did) {
/**方法注释*/
- (void)emptyDynWithdid:(NSInteger)did;

//    public void emptyDyn(long did, String lim) {
/**方法注释*/
- (void)emptyDynWithdid:(NSInteger)did lim:(NSString *)lim;

//    public void remFromDyn(long[] cids) {
/**方法注释*/
- (void)remFromDynWithcids:(NSMutableArray *)cids;

//    private String _dynOrder(int o, int l) {
/**方法注释*/
- (NSString *)_dynOrderWitho:(NSInteger)o l:(NSInteger)l;

//    private void _moveToDyn(long did, List<Long> ids) {
/**方法注释这个方法有泛型，注意啦！*/
- (void)_moveToDynWithdid:(NSInteger)did ids:(NSMutableArray *)ids;

//    private int _dynIvlBoost(Card card) {
/**方法注释*/
- (NSInteger)_dynIvlBoostWithcard:(Card *)card;

//    private boolean _checkLeech(Card card, JSONObject conf) {
/**方法注释*/
- (BOOL)_checkLeechWithcard:(Card *)card conf:(NSMutableDictionary *)conf;

//    public JSONObject _cardConf(Card card) {
/**方法注释*/
- (NSMutableDictionary *)_cardConfWithcard:(Card *)card;

//    private JSONObject _newConf(Card card) {
/**方法注释*/
- (NSMutableDictionary *)_newConfWithcard:(Card *)card;

//    private JSONObject _lapseConf(Card card) {
/**方法注释*/
- (NSMutableDictionary *)_lapseConfWithcard:(Card *)card;

//    private JSONObject _revConf(Card card) {
/**方法注释*/
- (NSMutableDictionary *)_revConfWithcard:(Card *)card;

//    public String _deckLimit() {
/**方法注释*/
- (NSString *)_deckLimit;

//    private boolean _resched(Card card) {
/**方法注释*/
- (BOOL)_reschedWithcard:(Card *)card;

//    private void _updateCutoff() {
/**方法注释*/
- (void)_updateCutoff;

//    private void update(JSONObject g) {
/**方法注释*/
- (void)updateWithg:(NSMutableDictionary *)g;

//    public void _checkDay() {
/**方法注释*/
- (void)_checkDay;

//    public CharSequence finishedMsg(Context context) {
/**方法注释*/
- (NSObject *)finishedMsgWithcontext:(NSObject *)context;

//    public String _nextDueMsg(Context context) {
/**方法注释*/
- (NSString *)_nextDueMsgWithcontext:(NSObject *)context;

//    public boolean revDue() {
/**方法注释*/
- (BOOL)revDue;

//    public boolean newDue() {
/**方法注释*/
- (BOOL)newDue;

//    public boolean haveBuried() {
/**方法注释*/
- (BOOL)haveBuried;

//    public String nextIvlStr(Context context, Card card, int ease) {
/**方法注释*/
- (NSString *)nextIvlStrWithcontext:(NSObject *)context card:(Card *)card ease:(NSInteger)ease;

//    public int nextIvl(Card card, int ease) {
/**方法注释*/
- (NSInteger)nextIvlWithcard:(Card *)card ease:(NSInteger)ease;

//    private int _nextLrnIvl(Card card, int ease) {
/**方法注释*/
- (NSInteger)_nextLrnIvlWithcard:(Card *)card ease:(NSInteger)ease;

//    public void suspendCards(long[] ids) {
/**方法注释*/
- (void)suspendCardsWithids:(NSMutableArray *)ids;

//    public void unsuspendCards(long[] ids) {
/**方法注释*/
- (void)unsuspendCardsWithids:(NSMutableArray *)ids;

//    public void buryCards(long[] cids) {
/**方法注释*/
- (void)buryCardsWithcids:(NSMutableArray *)cids;

//    public void buryNote(long nid) {
/**方法注释*/
- (void)buryNoteWithnid:(NSInteger)nid;

//    private void _burySiblings(Card card) {
/**方法注释*/
- (void)_burySiblingsWithcard:(Card *)card;

//    public void forgetCards(long[] ids) {
/**方法注释*/
- (void)forgetCardsWithids:(NSMutableArray *)ids;

//    public void reschedCards(long[] ids, int imin, int imax) {
/**方法注释*/
- (void)reschedCardsWithids:(NSMutableArray *)ids imin:(NSInteger)imin imax:(NSInteger)imax;

//    public void resetCards(Long[] ids) {
/**方法注释*/
- (void)resetCardsWithids:(NSMutableArray *)ids;

//    public void sortCards(long[] cids, int start) {
/**方法注释*/
- (void)sortCardsWithcids:(NSMutableArray *)cids start:(NSInteger)start;

//    public void sortCards(long[] cids, int start, int step, boolean shuffle, boolean shift) {
/**方法注释*/
- (void)sortCardsWithcids:(NSMutableArray *)cids start:(NSInteger)start step:(NSInteger)step shuffle:(BOOL)shuffle shift:(BOOL)shift;

//    public void randomizeCards(long did) {
/**方法注释*/
- (void)randomizeCardsWithdid:(NSInteger)did;

//    public void orderCards(long did) {
/**方法注释*/
- (void)orderCardsWithdid:(NSInteger)did;

//    public void resortConf(JSONObject conf) {
/**方法注释*/
- (void)resortConfWithconf:(NSMutableDictionary *)conf;

//    public void maybeRandomizeDeck() {
/**方法注释*/
- (void)maybeRandomizeDeck;

//    public void maybeRandomizeDeck(Long did) {
/**方法注释*/
- (void)maybeRandomizeDeckWithdid:(NSInteger)did;

//    public boolean haveBuried(long did) {
/**方法注释*/
- (BOOL)haveBuriedWithdid:(NSInteger)did;

//    public void unburyCardsForDeck(long did) {
/**方法注释*/
- (void)unburyCardsForDeckWithdid:(NSInteger)did;

//    public String getName() {
/**方法注释*/
- (NSString *)getName;

//    public int getToday() {
/**方法注释*/
- (NSInteger)getToday;

//    public void setToday(int today) {
/**方法注释*/
- (void)setTodayWithtoday:(NSInteger)today;

//    public long getDayCutoff() {
/**方法注释*/
- (NSInteger)getDayCutoff;

//    public int getReps(){
/**方法注释*/
- (NSInteger)getReps;

//    public void setReps(int reps){
/**方法注释*/
- (void)setRepsWithreps:(NSInteger)reps;

//    public int cardCount() {
/**方法注释*/
- (NSInteger)cardCount;

//    public int matureCount() {
/**方法注释*/
- (NSInteger)matureCount;

//    public int eta(int[] counts) {
/**方法注释*/
- (NSInteger)etaWithcounts:(NSMutableArray *)counts;

//    public int eta(int[] counts, boolean reload) {
/**方法注释*/
- (NSInteger)etaWithcounts:(NSMutableArray *)counts reload:(BOOL)reload;

//    public void decrementCounts(Card card) {
/**方法注释*/
- (void)decrementCountsWithcard:(Card *)card;

//    private void _sortIntoLrn(long due, long id) {
/**方法注释*/
- (void)_sortIntoLrnWithdue:(NSInteger)due xid:(NSInteger)xid;

//    public boolean leechActionSuspend(Card card) {
/**方法注释*/
- (BOOL)leechActionSuspendWithcard:(Card *)card;

//    public void setContext(WeakReference<Activity> contextReference) {
/**方法注释这个方法有泛型，注意啦！*///弱引用弱指针- (void)setContextWithcontextReference:(NSMutableArray *)contextReference;







//----------------------------------------------------------------------
//    public class DeckDueTreeNode implements Comparable {
//====================这是内部类或接口的声明开始

//        public String[] names;
/**注释*/
@property (nonatomic, strong) NSMutableArray *names;

//        public long did;
/**注释*/
@property (nonatomic, assign) NSInteger did;

//        public int depth;
/**注释*/
@property (nonatomic, assign) NSInteger depth;

//        public int revCount;
/**注释*/
@property (nonatomic, assign) NSInteger revCount;

//        public int lrnCount;
/**注释*/
@property (nonatomic, assign) NSInteger lrnCount;

//        public int newCount;
/**注释*/
@property (nonatomic, assign) NSInteger newCount;

//        public List<DeckDueTreeNode> children = new ArrayList<DeckDueTreeNode>();
/**方法注释这个方法有泛型，注意啦！*/
//- (我错啦 *)我错啦匹配出错啦！你自己弄吧！;

//        public DeckDueTreeNode(String[] names, long did, int revCount, int lrnCount, int newCount) {
/**构造方法注释*/
- (instancetype)initWithnames:(NSMutableArray *)names did:(NSInteger)did revCount:(NSInteger)revCount lrnCount:(NSInteger)lrnCount newCount:(NSInteger)newCount;

//        public DeckDueTreeNode(String name, long did, int revCount, int lrnCount, int newCount) {
/**构造方法注释*/
- (instancetype)initWithname:(NSString *)name did:(NSInteger)did revCount:(NSInteger)revCount lrnCount:(NSInteger)lrnCount newCount:(NSInteger)newCount;

//        public DeckDueTreeNode(String name, long did, int revCount, int lrnCount, int newCount,
//请谨慎，这个不完整/**常量注释*/
- (NSObject *)compareToWithother:(NSObject *)other;

//        public int compareTo(Object other) {
/**方法注释*/
- (NSInteger)DeckDueTreeNode:(NSObject *)did;

//        public String toString() {
/**方法注释*/
- (NSString *)discription;

//    public class DeckDueTreeNode implements Comparable {
//====================这是内部类或接口的声明
//----------------------------------------------------------------------






@end
