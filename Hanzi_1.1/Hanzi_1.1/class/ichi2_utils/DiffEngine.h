#import <Foundation/Foundation.h>

@interface DiffEngine : NSObject

//public class DiffEngine {
//这是内部类或接口的声明开始

//    public float Diff_Timeout = 1.0f;
/**注释*/
@property (nonatomic, strong) NSObject *Diff_Timeout;

//    public short Diff_EditCost = 4;
/**注释*/
@property (nonatomic, strong) NSObject *Diff_EditCost;

//    public short Diff_DualThreshold = 32;
/**注释*/
@property (nonatomic, strong) NSObject *Diff_DualThreshold;

//    protected static class LinesToCharsResult {
//这是内部类或接口的声明开始

//        protected String chars1;
/**注释*/
@property (nonatomic, copy) NSString *chars;

//        protected String chars2;
/**注释*/
//@property (nonatomic, copy) NSString *chars;

//        protected List<String> lineArray;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//        protected LinesToCharsResult(String chars1, String chars2, List<String> lineArray) {
/**构造方法注释*/
- (instancetype)initWithchars1:(NSString *)chars1 chars2:(NSString *)chars2 lineArray:(NSMutableArray *)lineArray;

//    public enum Operation {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public LinkedList<DiffAction> diff_main(String text1, String text2) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_mainWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    public LinkedList<DiffAction> diff_main(String text1, String text2, boolean checklines) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_mainWithtext1:(NSString *)text1 text2:(NSString *)text2 checklines:(BOOL)checklines;

//    protected LinkedList<DiffAction> diff_compute(String text1, String text2, boolean checklines) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_computeWithtext1:(NSString *)text1 text2:(NSString *)text2 checklines:(BOOL)checklines;

//    protected LinesToCharsResult diff_linesToChars(String text1, String text2) {
/**方法注释*/
- (NSObject *)diff_linesToCharsWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    private String diff_linesToCharsMunge(String text, List<String> lineArray, Map<String, Integer> lineHash) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    protected void diff_charsToLines(LinkedList<DiffAction> diffs, List<String> lineArray) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    protected LinkedList<DiffAction> diff_map(String text1, String text2) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_mapWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    protected LinkedList<DiffAction> diff_path1(List<Set<Long>> v_map, String text1, String text2) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_path1Withv_map:(NSMutableArray *)v_map text1:(NSString *)text1 text2:(NSString *)text2;

//    protected LinkedList<DiffAction> diff_path2(List<Set<Long>> v_map, String text1, String text2) {
/**方法注释这个方法有泛型，注意啦！*/
//小心，这里可能出错！！- (NSMutableArray *)diff_path2Withv_map:(NSMutableArray *)v_map text1:(NSString *)text1 text2:(NSString *)text2;

//    protected long diff_footprint(int x, int y) {
/**方法注释*/
- (NSInteger)diff_footprintWithx:(NSInteger)x y:(NSInteger)y;

//    public int diff_commonPrefix(String text1, String text2) {
/**方法注释*/
- (NSInteger)diff_commonPrefixWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    public int diff_commonSuffix(String text1, String text2) {
/**方法注释*/
- (NSInteger)diff_commonSuffixWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    protected String[] diff_halfMatch(String text1, String text2) {
/**方法注释*/
- (NSMutableArray *)diff_halfMatchWithtext1:(NSString *)text1 text2:(NSString *)text2;

//    private String[] diff_halfMatchI(String longtext, String shorttext, int i) {
/**方法注释*/
- (NSMutableArray *)diff_halfMatchIWithlongtext:(NSString *)longtext shorttext:(NSString *)shorttext i:(NSInteger)i;

//    public void diff_cleanupSemantic(LinkedList<DiffAction> diffs) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public void diff_cleanupSemanticLossless(LinkedList<DiffAction> diffs) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private int diff_cleanupSemanticScore(String one, String two) {
/**方法注释*/
- (NSInteger)diff_cleanupSemanticScoreWithone:(NSString *)one two:(NSString *)two;

//    private Pattern BLANKLINEEND = Pattern.compile("\\n\\r?\\n\\Z", Pattern.DOTALL);
/**注释*/
@property (nonatomic, strong) NSObject *BLANKLINEEND;

//    private Pattern BLANKLINESTART = Pattern.compile("\\A\\r?\\n\\r?\\n", Pattern.DOTALL);
/**注释*/
@property (nonatomic, strong) NSObject *BLANKLINESTART;

//    public void diff_cleanupMerge(LinkedList<DiffAction> diffs) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public String[] diffedHtmlStrings(String typed, String correct) {
/**方法注释*/
- (NSMutableArray *)diffedHtmlStringsWithtyped:(NSString *)typed correct:(NSString *)correct;

//    public static String wrapBad(String in) {
/**方法注释*/
+ (NSString *)wrapBadWithin:(NSString *)in;

//    public static String wrapGood(String in) {
/**方法注释*/
+ (NSString *)wrapGoodWithin:(NSString *)in;

//    public static String wrapMissing(String in) {
/**方法注释*/
+ (NSString *)wrapMissingWithin:(NSString *)in;

//    public static class DiffAction {
//这是内部类或接口的声明开始

//        public Operation operation;
/**注释*/
@property (nonatomic, strong) NSObject *operation;

//        public String text;
/**注释*/
@property (nonatomic, copy) NSString *text;

//        public DiffAction(Operation operation, String text) {
/**构造方法注释*/
- (instancetype)initWithoperation:(NSObject *)operation text:(NSString *)text;

//        public String toString() {
/**方法注释*/
- (NSString *)discription;

//        public boolean equals(Object d) {
/**方法注释*/
- (BOOL)equalsWithd:(NSObject *)d;

@end