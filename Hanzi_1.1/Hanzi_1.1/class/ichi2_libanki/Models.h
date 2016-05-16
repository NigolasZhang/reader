//
//  Models.h
//  volNotes01
//
//  Created by God on 16/5/7.
//  Copyright © 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XCollection;

@interface Models : NSObject

/**注释这个方法有泛型，注意啦！*///懒加载

//    private static final Pattern fClozePattern2 = Pattern.compile("<%cloze:(.+?)%>");
/**常量注释*///正则表达式
//static Pattern * const fClozePattern2 = Pattern.compile("<%cloze:(.+?)%>");

//    private static final Pattern fClozeOrdPattern = Pattern.compile("\\{\\{c(\\d+)::.+?\\}\\}");
/**常量注释*///正则表达式
//static Pattern * const fClozeOrdPattern = Pattern.compile("\\{\\{c(\\d+)::.+?\\}\\}");

//    public static final String defaultModel =
/**常量注释*/
//static NSString * const defaultModel =

//    private static final String defaultField = "{'name': \"\", " + "'ord': null, " + "'sticky': False, " +
/**常量注释*/
//static NSString * const defaultField = "{'name': \"\", " + "'ord': null, " + "'sticky': False, " +

//    private static final String defaultTemplate = "{'name': \"\", " + "'ord': null, " + "'qfmt': \"\", "
/**常量注释*/
//static NSString * const defaultTemplate = "{'name': \"\", " + "'ord': null, " + "'qfmt': \"\", "




//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) XCollection *mCol;

//    private boolean mChanged;
/**注释*/
@property (nonatomic, assign) BOOL mChanged;

//    private HashMap<Long, JSONObject> mModels;
/**方法注释这个方法有泛型，注意啦！*/
@property (nonatomic, strong) NSMutableDictionary *mModels;

//    private int mId;
/**注释*/
@property (nonatomic, assign) NSInteger mId;

//    private String mName = "";
/**注释*/
@property (nonatomic, copy) NSString *mName;

//    private long mCrt = Utils.intNow();
/**注释*/
@property (nonatomic, assign) NSInteger mCrt;

//    private long mMod = Utils.intNow();
/**注释*/
@property (nonatomic, assign) NSInteger mMod;

//    private JSONObject mConf;
/**注释*/
@property (nonatomic, strong) NSMutableDictionary *mConf;

//    private String mCss = "";
/**注释*/
@property (nonatomic, copy) NSString *mCss;

//    private JSONArray mFields;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mFields;

//    private JSONArray mTemplates;
/**注释*/
@property (nonatomic, strong) NSMutableArray *mTemplates;





//    private Map<String, Template> mCmpldTemplateMap = new HashMap<String, Template>();
/**注释这个方法有泛型，注意啦！*///懒加载
@property (nonatomic, strong) NSMutableDictionary *mCmpldTemplateMap;



//    public Models(Collection col) {
/**构造方法注释*/
- (instancetype)initWithcol:(XCollection *)col;

//    public void load(String json) {
/**方法注释*/
- (void)loadWithjson:(NSString *)json;

//    public void save() {
/**方法注释*/
- (void)save;

//    public void save(JSONObject m) {
/**方法注释*/
- (void)saveWithm:(NSMutableDictionary *)m;

//    public void save(JSONObject m, boolean templates) {
/**方法注释*/
- (void)saveWithm:(NSMutableDictionary *)m templates:(BOOL)templates;

//    public void flush() {
/**方法注释*/
- (void)flush;

//    public JSONObject current() {
/**方法注释*/
- (NSMutableDictionary *)current;

//    public JSONObject current(boolean forDeck) {
/**方法注释*/
- (NSMutableDictionary *)currentWithforDeck:(BOOL)forDeck;

//    public void setCurrent(JSONObject m) {
/**方法注释*/
- (void)setCurrentWithm:(NSMutableDictionary *)m;

//    public JSONObject get(long id) {
/**方法注释*/
- (NSMutableDictionary *)getWithxid:(NSInteger)xid;

//    public ArrayList<JSONObject> all() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)all;

//    public JSONObject byName(String name) {
/**方法注释*/
- (NSMutableDictionary *)byNameWithname:(NSString *)name;

//    public JSONObject newModel(String name) {
/**方法注释*/
- (NSMutableDictionary *)newModelWithname:(NSString *)name;

//    public void rem(JSONObject m) throws ConfirmModSchemaException {
/**方法注释*/
- (void)remWithm:(NSMutableDictionary *)m;

//    public void add(JSONObject m) {
/**方法注释*/
- (void)addWithm:(NSMutableDictionary *)m;

//    public void update(JSONObject m) {
/**方法注释*/
- (void)updateWithm:(NSMutableDictionary *)m;

//    private void _setID(JSONObject m) {
/**方法注释*/
- (void)_setIDWithm:(NSMutableDictionary *)m;

//    public boolean have(long id) {
/**方法注释*/
- (BOOL)haveWithxid:(NSInteger)xid;

//    public long[] ids() {
/**方法注释*/
- (NSMutableArray *)ids;

//    public ArrayList<Long> nids(JSONObject m) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)nidsWithm:(NSMutableDictionary *)m;

//    public int useCount(JSONObject m) {
/**方法注释*/
- (NSInteger)useCountWithm:(NSMutableDictionary *)m;

//    public int tmplUseCount(JSONObject m, int ord) {
/**方法注释*/
- (NSInteger)tmplUseCountWithm:(NSMutableDictionary *)m ord:(NSInteger)ord;

//    public JSONObject copy(JSONObject m) {
/**方法注释*/
- (NSMutableDictionary *)copyWithm:(NSMutableDictionary *)m;

//    public JSONObject newField(String name) {
/**方法注释*/
- (NSMutableDictionary *)newFieldWithname:(NSString *)name;

//    public Map<String, Pair<Integer, JSONObject>> fieldMap(JSONObject m) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)fieldMapWithm:(NSMutableDictionary *)m;

//    public ArrayList<String> fieldNames(JSONObject m) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)fieldNamesWithm:(NSMutableDictionary *)m;

//    public int sortIdx(JSONObject m) {
/**方法注释*/
- (NSInteger)sortIdxWithm:(NSMutableDictionary *)m;

//    public void setSortIdx(JSONObject m, int idx) throws ConfirmModSchemaException{
/**方法注释*/
- (void)setSortIdxWithm:(NSMutableDictionary *)m idx:(NSInteger)idx;

//    public void addField(JSONObject m, JSONObject field) throws ConfirmModSchemaException {
/**方法注释*/
- (void)addFieldWithm:(NSMutableDictionary *)m field:(NSMutableDictionary *)field;




//-------------------------------------------------------------------------------
//    class TransformFieldAdd implements TransformFieldVisitor {
//============这是内部类或接口的声明开始

//        public String[] transform(String[] fields) {
/**方法注释*/
- (NSMutableArray *)transformWithfields:(NSMutableArray *)fields;

//    class TransformFieldAdd implements TransformFieldVisitor {
//============这是内部类或接口的声明开始
//-------------------------------------------------------------------------------



//    public void remField(JSONObject m, JSONObject field) throws ConfirmModSchemaException {
/**方法注释*/
- (void)remFieldWithm:(NSMutableDictionary *)m field:(NSMutableDictionary *)field;







//-------------------------------------------------------------------------------
//    class TransformFieldDelete implements TransformFieldVisitor {
//============这是内部类或接口的声明开始

//        private int idx;
/**注释*/
@property (nonatomic, assign) NSInteger idx;

//        public TransformFieldDelete(int _idx) {
/**构造方法注释*/
- (instancetype)initWith_idx:(NSInteger)_idx;

//        public String[] transform(String[] fields) {
/**方法注释*/
- (NSMutableArray *)transformWithfields:(NSMutableArray *)fields;


//    class TransformFieldDelete implements TransformFieldVisitor {
//============这是内部类或接口的声明开始
//-------------------------------------------------------------------------------








//    public void moveField(JSONObject m, JSONObject field, int idx) throws ConfirmModSchemaException {
/**方法注释*/
- (void)moveFieldWithm:(NSMutableDictionary *)m field:(NSMutableDictionary *)field idx:(NSInteger)idx;




//-------------------------------------------------------------------------------
//    class TransformFieldMove implements TransformFieldVisitor {
//============这是内部类或接口的声明开始

//        private int idx;
/**注释*/
//@property (nonatomic, assign) NSInteger idx;

//        private int oldidx;
/**注释*/
@property (nonatomic, assign) NSInteger oldidx;

//        public TransformFieldMove(int _idx, int _oldidx) {
/**构造方法注释*/
- (instancetype)initWith_idx:(NSInteger)_idx _oldidx:(NSInteger)_oldidx;

//        public String[] transform(String[] fields) {
/**方法注释*/
- (NSMutableArray *)transformWithfields:(NSMutableArray *)fields;

//    class TransformFieldMove implements TransformFieldVisitor {
//============这是内部类或接口的声明开始
//-------------------------------------------------------------------------------


//    public void renameField(JSONObject m, JSONObject field, String newName) throws ConfirmModSchemaException {
/**方法注释*/
- (void)renameFieldWithm:(NSMutableDictionary *)m field:(NSMutableDictionary *)field newName:(NSString *)newName;

//    public void _updateFieldOrds(JSONObject m) {
/**方法注释*/
- (void)_updateFieldOrdsWithm:(NSMutableDictionary *)m;




//-------------------------------------------------------------------------------
//    interface TransformFieldVisitor {
//============这是内部类或接口的声明开始

//        public String[] transform(String[] fields);
/**方法注释*/
- (NSMutableArray *)transformWithfields:(NSMutableArray *)fields;

//    interface TransformFieldVisitor {
//============这是内部类或接口的声明开始
//-------------------------------------------------------------------------------



//    public void _transformFields(JSONObject m, TransformFieldVisitor fn) {
/**方法注释*/
- (void)_transformFieldsWithm:(NSMutableDictionary *)m fn:(NSObject *)fn;

//    public JSONObject newTemplate(String name) {
/**方法注释*/
- (NSMutableDictionary *)newTemplateWithname:(NSString *)name;

//    public void addTemplate(JSONObject m, JSONObject template) throws ConfirmModSchemaException {
/**方法注释*/
- (void)addTemplateWithm:(NSMutableDictionary *)m template:(NSMutableDictionary *)template;

//    public boolean remTemplate(JSONObject m, JSONObject template) throws ConfirmModSchemaException {
/**方法注释*/
- (BOOL)remTemplateWithm:(NSMutableDictionary *)m template:(NSMutableDictionary *)template;

//    public void _updateTemplOrds(JSONObject m) {
/**方法注释*/
- (void)_updateTemplOrdsWithm:(NSMutableDictionary *)m;

//    public void moveTemplate(JSONObject m, JSONObject template, int idx) {
/**方法注释*/
- (void)moveTemplateWithm:(NSMutableDictionary *)m template:(NSMutableDictionary *)template idx:(NSInteger)idx;

//    private void _syncTemplates(JSONObject m) {
/**方法注释*/
- (void)_syncTemplatesWithm:(NSMutableDictionary *)m;

//    public void change(JSONObject m, long[] nids, JSONObject newModel, Map<Integer, Integer> fmap, Map<Integer, Integer> cmap) throws ConfirmModSchemaException {
/**方法注释这个方法有泛型，注意啦！*/
- (void)changeWithm:(NSMutableDictionary *)m nids:(NSMutableArray *)nids newModel:(NSMutableDictionary *)newModel fmap:(NSMutableDictionary *)fmap cmap:(NSMutableDictionary *)cmap;

//    private void _changeNotes(long[] nids, JSONObject newModel, Map<Integer, Integer> map) {
/**方法注释这个方法有泛型，注意啦！*/
- (void)_changeNotesWithnids:(NSMutableArray *)nids newModel:(NSMutableDictionary *)newModel map:(NSMutableDictionary *)map;

//    private void _changeCards(long[] nids, JSONObject oldModel, JSONObject newModel, Map<Integer, Integer> map) {
/**方法注释这个方法有泛型，注意啦！*/
- (void)_changeCardsWithnids:(NSMutableArray *)nids oldModel:(NSMutableDictionary *)oldModel newModel:(NSMutableDictionary *)newModel map:(NSMutableDictionary *)map;

//    public String scmhash(JSONObject m) {
/**方法注释*/
- (NSString *)scmhashWithm:(NSMutableDictionary *)m;

//    private void _updateRequired(JSONObject m) {
/**方法注释*/
- (void)_updateRequiredWithm:(NSMutableDictionary *)m;

//    private Object[] _reqForTemplate(JSONObject m, ArrayList<String> flds, JSONObject t) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_reqForTemplateWithm:(NSMutableDictionary *)m flds:(NSString *)flds t:(NSMutableDictionary *)t;

//    public ArrayList<Integer> availOrds(JSONObject m, String flds) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)availOrdsWithm:(NSMutableDictionary *)m flds:(NSString *)flds;

//    public ArrayList<Integer> _availClozeOrds(JSONObject m, String flds) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_availClozeOrdsWithm:(NSMutableDictionary *)m flds:(NSString *)flds;

//    public ArrayList<Integer> _availClozeOrds(JSONObject m, String flds, boolean allowEmpty) {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableArray *)_availClozeOrdsWithm:(NSMutableDictionary *)m flds:(NSString *)flds allowEmpty:(BOOL)allowEmpty;

//    public void beforeUpload() {
/**方法注释*/
- (void)beforeUpload;

//    public static JSONObject addBasicModel(Collection col) throws ConfirmModSchemaException {
/**方法注释*/
+ (NSMutableDictionary *)addBasicModelWithcol:(XCollection *)col;

//    public static JSONObject addBasicModel(Collection col, String name) throws ConfirmModSchemaException {
/**方法注释*/
+ (NSMutableDictionary *)addBasicModelWithcol:(XCollection *)col name:(NSString *)name;

//    public static JSONObject addForwardReverse(Collection col) throws ConfirmModSchemaException {
/**方法注释*/
+ (NSMutableDictionary *)addForwardReverseWithcol:(XCollection *)col;

//    public static JSONObject addForwardOptionalReverse(Collection col) throws ConfirmModSchemaException {
/**方法注释*/
+ (NSMutableDictionary *)addForwardOptionalReverseWithcol:(XCollection *)col;

//    public static JSONObject addClozeModel(Collection col) throws ConfirmModSchemaException {
/**方法注释*/
+ (NSMutableDictionary *)addClozeModelWithcol:(XCollection *)col;

//    public void setChanged() {
/**方法注释*/
- (void)setChanged;

//    public HashMap<Long, HashMap<Integer, String>> getTemplateNames() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)getTemplateNames;

//    public int getId() {
/**方法注释*/
- (NSInteger)getId;

//    public String getName() {
/**方法注释*/
- (NSString *)getName;

//    public HashMap<Long, JSONObject> getModels() {
/**方法注释这个方法有泛型，注意啦！*/
- (NSMutableDictionary *)getModels;

//	public boolean validateModel() {
/**方法注释*/
- (BOOL)validateModel;

//	private boolean validateBrackets(JSONObject value) {
/**方法注释*/
- (BOOL)validateBracketsWithvalue:(NSMutableDictionary *)value;



@end
