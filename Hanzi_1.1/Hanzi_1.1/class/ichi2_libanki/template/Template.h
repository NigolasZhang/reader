#import <Foundation/Foundation.h>

@interface Template : NSObject

//public class Template {
//这是内部类或接口的声明开始


//    private static final Pattern fClozeSection = Pattern.compile("c[qa]:(\\d+):(.+)");
/**常量注释*/
//static NSObject * const fClozeSection = Pattern.compile("c[qa]:(\\d+):(.+)");

//    private Pattern sSection_re = null;
/**注释*/
@property (nonatomic, strong) NSObject *sSection_re;

//    private Pattern sTag_re = null;
/**注释*/
@property (nonatomic, strong) NSObject *sTag_re;

//    private String sOtag = "{{";
/**注释*/
@property (nonatomic, copy) NSString *sOtag;

//    private String sCtag = "}}";
/**注释*/
@property (nonatomic, copy) NSString *sCtag;

//    private String mTemplate;
/**注释*/
@property (nonatomic, copy) NSString *mTemplate;

//    private Map<String, String> mContext;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private static String get_or_attr(Map<String, String> obj, String name) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private static String get_or_attr(Map<String, String> obj, String name, String _default) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    public Template(String template, Map<String, String> context) {
/**构造方法注释*/
//- (instancetype)init匹配出错啦！你自己弄吧！;

//    public String render() {
/**方法注释*/
- (NSString *)render;

//    private void compile_regexps() {
/**方法注释*/
- (void)compile_regexps;

//    private String render_sections(String template, Map<String, String> context) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private String render_tags(String template, Map<String, String> context) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private String render_tag(String tag_name, Map<String, String> context) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private String render_comment() {
/**方法注释*/
- (NSString *)render_comment;

//    private String render_unescaped(String tag_name, Map<String, String> context) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//            public int compare(String lhs, String rhs) {
/**方法注释*/
- (NSInteger)compareWithlhs:(NSString *)lhs rhs:(NSString *)rhs;

//    private static String clozeText(String txt, String ord, char type) {
/**方法注释*/
+ (NSString *)clozeTextWithtxt:(NSString *)txt ord:(NSString *)ord type:(NSObject *)type;

//    private String render_delimiter(String tag_name) {
/**方法注释*/
- (NSString *)render_delimiterWithtag_name:(NSString *)tag_name;

@end