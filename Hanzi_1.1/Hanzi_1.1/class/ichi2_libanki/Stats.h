//
//  Stats.h
//  volNotes01
//
//  Created by A on 16/5/6.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface Stats : NSObject


//public class Stats {
//这是内部类或接口的声明开始

//    public static final int TYPE_MONTH = 0;
/**常量注释*/
//static NSInteger const TYPE_MONTH = 0;

//    public static final int TYPE_YEAR = 1;
/**常量注释*/
//static NSInteger const TYPE_YEAR = 1;

//    public static final int TYPE_LIFE = 2;
/**常量注释*/
//static NSInteger const TYPE_LIFE = 2;

//    public static enum ChartType {FORECAST, REVIEW_COUNT, REVIEW_TIME,
//请谨慎，这个不完整/**常量注释*///枚举类型
//static 我错啦 * const 我错啦我错啦

//    private static Stats sCurrentInstance;
/**注释*/
@property (nonatomic, strong) Stats *sCurrentInstance;

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private boolean mWholeCollection;
/**注释*/
@property (nonatomic, assign) BOOL mWholeCollection;

//    private boolean mDynamicAxis = false;
/**注释*/
@property (nonatomic, assign) BOOL mDynamicAxis;

//    private boolean mIsPieChart = false;
/**注释*/
@property (nonatomic, assign) BOOL mIsPieChart;

//    private double[][] mSeriesList;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mSeriesList;

//    private boolean mHasColoredCumulative = false;
/**注释*/
@property (nonatomic, assign) BOOL mHasColoredCumulative;

//    private int mType;
/**注释*/
@property (nonatomic, assign) NSInteger mType;

//    private int mTitle;
/**注释*/
@property (nonatomic, assign) NSInteger mTitle;

//    private boolean mBackwards;
/**注释*/
@property (nonatomic, assign) BOOL mBackwards;

//    private int[] mValueLabels;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mValueLabels;

//    private int[] mColors;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mColors;

//    private int[] mAxisTitles;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mAxisTitles;

//    private int mMaxCards = 0;
/**注释*/
@property (nonatomic, assign) NSInteger mMaxCards;

//    private int mMaxElements = 0;
/**注释*/
@property (nonatomic, assign) NSInteger mMaxElements;

//    private double mFirstElement = 0;
/**注释*/
@property (nonatomic, strong) NSNumber *mFirstElement;

//    private double mLastElement = 0;
/**注释*/
@property (nonatomic, strong) NSNumber *mLastElement;

//    private int mZeroIndex = 0;
/**注释*/
@property (nonatomic, assign) NSInteger mZeroIndex;

//    private boolean mFoundLearnCards = false;
/**注释*/
@property (nonatomic, assign) BOOL mFoundLearnCards;

//    private boolean mFoundCramCards = false;
/**注释*/
@property (nonatomic, assign) BOOL mFoundCramCards;

//    private boolean mFoundRelearnCards;
/**注释*/
@property (nonatomic, assign) BOOL mFoundRelearnCards;

//    private double[][] mCumulative = null;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mCumulative;

//    private String mAverage;
/**注释*/
@property (nonatomic, copy) NSString *mAverage;

//    private String mLongest;
/**注释*/
@property (nonatomic, copy) NSString *mLongest;

//    private double mPeak;
/**注释*/
@property (nonatomic, strong) NSNumber *mPeak;

//    private double mMcount;
/**注释*/
@property (nonatomic, strong) NSNumber *mMcount;

//    public Stats(Collection col, boolean wholeCollection) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col wholeCollection:(BOOL)wholeCollection;

//    public static Stats currentStats() {
/**方法注释*/
+ (Stats *)currentStats;

//    public double[][] getSeriesList() {
/**方法注释*/
- (NSMutableArray *)getSeriesList;

//    public double[][] getCumulative() {
/**方法注释*/
- (NSMutableArray *)getCumulative;

//    public Object[] getMetaInfo() {
/**方法注释*/
- (NSMutableArray *)getMetaInfo;

//    public int[] calculateTodayStats(){
/**方法注释*/
- (NSMutableArray *)calculateTodayStats;

//    public boolean calculateDue(int type) {
/**方法注释*/
- (BOOL)calculateDueWithtype:(NSInteger)type;

//    public static double[][] getSmallDueStats(Collection col) {
/**方法注释*/
+ (NSMutableArray *)getSmallDueStatsWithcol:(XCollection *)col;

//    public boolean calculateDone(int type, boolean reps) {
/**方法注释*/
- (BOOL)calculateDoneWithtype:(NSInteger)type reps:(BOOL)reps;

//    public boolean calculateIntervals(Context context, int type) {
/**方法注释*/
- (BOOL)calculateIntervalsWithcontext:(NSObject *)context type:(NSInteger)type;

//    public boolean calculateBreakdown(int type) {
/**方法注释*/
- (BOOL)calculateBreakdownWithtype:(NSInteger)type;

//            public int compare(double[] s1, double[] s2) {
/**方法注释*/
- (NSInteger)compareWiths1:(NSMutableArray *)s1 s2:(NSMutableArray *)s2;

//    public boolean calculateWeeklyBreakdown(int type) {
/**方法注释*/
- (BOOL)calculateWeeklyBreakdownWithtype:(NSInteger)type;

//    public boolean calculateAnswerButtons(int type) {
/**方法注释*/
- (BOOL)calculateAnswerButtonsWithtype:(NSInteger)type;

//    public boolean calculateCardsTypes(int type) {
/**方法注释*/
- (BOOL)calculateCardsTypesWithtype:(NSInteger)type;

//    private String _limit() {
/**方法注释*/
- (NSString *)_limit;

//    private String _revlogLimit() {
/**方法注释*/
- (NSString *)_revlogLimit;

//    public static double[][] createCumulative(double [][] nonCumulative){
/**方法注释*/
+ (NSMutableArray *)createCumulativeWithnonCumulative:(NSNumber *)nonCumulative;

//    public static double[][] createCumulative(double [][] nonCumulative, int startAtIndex){
/**方法注释*/
+ (NSMutableArray *)createCumulativeWithnonCumulative:(NSNumber *)nonCumulative startAtIndex:(NSInteger)startAtIndex;

//    public static double[] createCumulative(double [] nonCumulative){
/**方法注释*/
//+ (NSMutableArray *)createCumulativeWithnonCumulative:(NSMutableArray *)nonCumulative;

//    public static double[] createCumulativeInPercent(double [] nonCumulative, double total){
/**方法注释*/
+ (NSMutableArray *)createCumulativeInPercentWithnonCumulative:(NSMutableArray *)nonCumulative total:(NSNumber *)total;

//    public static double[] createCumulativeInPercent(double [] nonCumulative, double total, int ignoreIndex){
/**方法注释*/
+ (NSMutableArray *)createCumulativeInPercentWithnonCumulative:(NSMutableArray *)nonCumulative total:(NSNumber *)total ignoreIndex:(NSInteger)ignoreIndex;

//    private int _periodDays() {
/**方法注释*/
- (NSInteger)_periodDays;




@end
