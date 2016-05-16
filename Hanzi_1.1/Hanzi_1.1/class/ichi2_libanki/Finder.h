//
//  Finder.h
//  volNotes01
//
//  Created by A on 16/5/6.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface Finder : NSObject

//public class Finder {
//这是内部类或接口的声明开始

//    private static final Pattern fPropPattern = Pattern.compile("(^.+?)(<=|>=|!=|=|<|>)(.+?$)");
/**常量注释*///正则表达式
//static Pattern * const fPropPattern = Pattern.compile("(^.+?)(<=|>=|!=|=|<|>)(.+?$)");

//    private static final Pattern fNidsPattern = Pattern.compile("[^0-9,]");
/**常量注释*///正则表达式
//static Pattern * const fNidsPattern = Pattern.compile("[^0-9,]");

//    private static final Pattern fMidPattern = Pattern.compile("[^0-9]");
/**常量注释*///正则表达式
//static Pattern * const fMidPattern = Pattern.compile("[^0-9]");

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    public Finder(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public List<Long> findCards(String query) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsWithquery:(NSString *)query;

//    public List<Long> findCards(String query, String _order) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsWithquery:(NSString *)query _order:(NSString *)_order;

//    public List<Long> findCards(String query, boolean _order) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSMutableArray *)findCardsWithquery:(NSString *)query _order:(BOOL)_order;

//    private List<Long> _findCards(String query, Object _order) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSMutableArray *)_findCardsWithquery:(NSString *)query _order:(Object *)_order;

//    public List<Long> findNotes(String query) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findNotesWithquery:(NSString *)query;

//    public String[] _tokenize(String query) {
/**方法注释*/
- (NSMutableArray *)_tokenizeWithquery:(NSString *)query;

//    public class SearchState {
//＝＝＝＝＝＝＝＝＝＝＝＝＝这是内部类或接口的声明开始

//        public boolean isnot;
/**注释*/
@property (nonatomic, assign) BOOL isnot;

//        public boolean isor;
/**注释*/
@property (nonatomic, assign) BOOL isor;

//        public boolean join;
/**注释*/
@property (nonatomic, assign) BOOL join;

//        public String q = "";
/**注释*/
@property (nonatomic, copy) NSString *q;

//        public boolean bad;
/**注释*/
@property (nonatomic, assign) BOOL bad;

//        public void add(String txt) {
/**方法注释*/
- (void)addWithtxt:(NSString *)txt;

//        public void add(String txt, boolean wrap) {
/**方法注释*/
- (void)addWithtxt:(NSString *)txt wrap:(BOOL)wrap;

//    public Pair<String, String[]> _where(String[] tokens) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)_whereWithtokens:(NSMutableArray *)tokens;

//    private String _query(String preds, String order) {
/**方法注释*/
- (NSString *)_queryWithpreds:(NSString *)preds order:(NSString *)order;

//    private Pair<String, Boolean> _order(String order) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)_orderWithorder:(NSString *)order;

//    private Pair<String, Boolean> _order(Boolean order) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSMutableDictionary *)_orderWithorder:(BOOL)order;

//    private String _findTag(String val, List<String> args) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSString *)_findTagWithval:(NSString *)val args:(NSMutableArray *)args;

//    private String _findCardState(String val) {
/**方法注释*/
- (NSString *)_findCardStateWithval:(NSString *)val;

//    private String _findRated(String val) {
/**方法注释*/
- (NSString *)_findRatedWithval:(NSString *)val;

//    private String _findAdded(String val) {
/**方法注释*/
- (NSString *)_findAddedWithval:(NSString *)val;

//    private String _findProp(String _val) {
/**方法注释*/
- (NSString *)_findPropWith_val:(NSString *)_val;

//    private String _findText(String val, List<String> args) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSString *)_findTextWithval:(NSString *)val args:(NSMutableArray *)args;

//    private String _findNids(String val) {
/**方法注释*/
- (NSString *)_findNidsWithval:(NSString *)val;

//    private String _findCids(String val) {
/**方法注释*/
- (NSString *)_findCidsWithval:(NSString *)val;

//    private String _findMid(String val) {
/**方法注释*/
- (NSString *)_findMidWithval:(NSString *)val;

//    private String _findModel(String val) {
/**方法注释*/
- (NSString *)_findModelWithval:(NSString *)val;

//    private List<Long> dids(Long did) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)didsWithdid:(NSInteger)did;

//    public String _findDeck(String val) {
/**方法注释*/
- (NSString *)_findDeckWithval:(NSString *)val;

//    private String _findTemplate(String val) {
/**方法注释*/
- (NSString *)_findTemplateWithval:(NSString *)val;

//    private String _findField(String field, String val) {
/**方法注释*/
- (NSString *)_findFieldWithfield:(NSString *)field val:(NSString *)val;

//    private String _findDupes(String val) {
/**方法注释*/
- (NSString *)_findDupesWithval:(NSString *)val;

//    public static int findReplace(Collection col, List<Long> nids, String src, String dst) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst;

//    public static int findReplace(Collection col, List<Long> nids, String src, String dst, boolean regex) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst regex:(BOOL)regex;

//    public static int findReplace(Collection col, List<Long> nids, String src, String dst, String field) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst field:(NSString *)field;

//    public static int findReplace(Collection col, List<Long> nids, String src, String dst, boolean isRegex,
/**方法注释这个方法有泛型，注意啦！*/
+ (NSInteger)findReplaceWithcol:(XCollection *)col nids:(NSMutableArray *)nids src:(NSString *)src dst:(NSString *)dst isRegex:(BOOL)isRegex;

//    public List<String> fieldNames(Collection col) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)fieldNamesWithcol:(XCollection *)col;

//    public List<String> fieldNames(Collection col, boolean downcase) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)fieldNamesWithcol:(XCollection *)col downcase:(BOOL)downcase;

//    public static Integer ordForMid(Collection col, Map<Long, Integer> fields, long mid, String fieldName) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSInteger)ordForMidWithcol:(XCollection *)col fields:(NSMutableDictionary *)fields mid:(NSInteger)mid fieldName:(NSString *)fieldName;

//    public static List<Pair<String, List<Long>>> findDupes(Collection col, String fieldName) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)findDupesWithcol:(XCollection *)col fieldName:(NSString *)fieldName;

//    public static List<Pair<String, List<Long>>> findDupes(Collection col, String fieldName, String search) {
/**方法注释这个方法有泛型，注意啦！*/
+ (NSMutableArray *)findDupesWithcol:(XCollection *)col fieldName:(NSString *)fieldName search:(NSString *)search;

//    public ArrayList<HashMap<String, String>> findCardsForCardBrowser(String query, boolean _order,
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)findCardsForCardBrowserWithquery:(NSString *)query _order:(BOOL)_order;

//    public ArrayList<HashMap<String, String>> findCardsForCardBrowser(String query, String _order,
/**方法注释这个方法有泛型，注意啦！*/
//- (NSMutableArray *)findCardsForCardBrowserWithquery:(NSString *)query _order:(NSString *)_order;

//    private ArrayList<HashMap<String, String>> _findCardsForCardBrowser(String query, Object _order,
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_findCardsForCardBrowserWithquery:(NSString *)query _order:(NSObject *)_order;

//    private String _queryForCardBrowser(String preds, String order) {
/**方法注释*/
- (NSString *)_queryForCardBrowserWithpreds:(NSString *)preds order:(NSString *)order;



@end
