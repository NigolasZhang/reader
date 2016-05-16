#import <Foundation/Foundation.h>

@interface Base64 : NSObject

//public class Base64 extends Object {
//这是内部类或接口的声明开始

//    public final static int NO_OPTIONS = 0;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int ENCODE = 1;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int DECODE = 0;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int GZIP = 2;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int DONT_GUNZIP = 4;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int DO_BREAK_LINES = 8;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int URL_SAFE = 16;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    public final static int ORDERED = 32;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    private final static int MAX_LINE_LENGTH = 76;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *int;

//    private final static byte EQUALS_SIGN = (byte) '=';
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *byte;

//    private final static byte NEW_LINE = (byte) '\n';
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *byte;

//    private final static String PREFERRED_ENCODING = "US-ASCII";
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *String;





//    private final static byte[] _STANDARD_ALPHABET = { (byte) 'A', (byte) 'B', (byte) 'C', (byte) 'D', (byte) 'E',
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const byte[] _STANDARD_ALPHABET = { (byte) 'A', (byte) 'B', (byte) 'C', (byte) 'D', (byte) 'E',



//    private final static byte[] _URL_SAFE_ALPHABET = { (byte) 'A', (byte) 'B', (byte) 'C', (byte) 'D', (byte) 'E',
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const byte[] _URL_SAFE_ALPHABET = { (byte) 'A', (byte) 'B', (byte) 'C', (byte) 'D', (byte) 'E',



//    private final static byte[] _ORDERED_ALPHABET = { (byte) '-', (byte) '0', (byte) '1', (byte) '2', (byte) '3',
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const byte[] _ORDERED_ALPHABET = { (byte) '-', (byte) '0', (byte) '1', (byte) '2', (byte) '3',



//    private final static byte[] getAlphabet(int options) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private final static byte[] getDecodabet(int options) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private Base64() {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private static byte[] encode3to4(byte[] b4, byte[] threeBytes, int numSigBytes, int options) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private static byte[] encode3to4(byte[] source, int srcOffset, int numSigBytes, byte[] destination, int destOffset,
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public static void encode(java.nio.ByteBuffer raw, java.nio.ByteBuffer encoded) {
/**方法注释*/
+ (void)encodeWithraw:(NSObject *)raw encoded:(NSObject *)encoded;

//    public static void encode(java.nio.ByteBuffer raw, java.nio.CharBuffer encoded) {
/**方法注释*/
//+ (void)encodeWithraw:(NSObject *)raw encoded:(NSObject *)encoded;

//    public static String encodeObject(java.io.Serializable serializableObject) throws java.io.IOException {
/**方法注释*/
+ (NSString *)encodeObjectWithserializableObject:(NSObject *)serializableObject;

//    public static String encodeObject(java.io.Serializable serializableObject, int options) throws java.io.IOException {
/**方法注释*/
+ (NSString *)encodeObjectWithserializableObject:(NSObject *)serializableObject options:(NSInteger)options;

//    public static String encodeBytes(byte[] source) {
/**方法注释*/
+ (NSString *)encodeBytesWithsource:(NSMutableArray *)source;

//    public static String encodeBytes(byte[] source, int options) throws java.io.IOException {
/**方法注释*/
+ (NSString *)encodeBytesWithsource:(NSMutableArray *)source options:(NSInteger)options;

//    public static String encodeBytes(byte[] source, int off, int len) {
/**方法注释*/
+ (NSString *)encodeBytesWithsource:(NSMutableArray *)source off:(NSInteger)off len:(NSInteger)len;

//    public static String encodeBytes(byte[] source, int off, int len, int options) throws java.io.IOException {
/**方法注释*/
+ (NSString *)encodeBytesWithsource:(NSMutableArray *)source off:(NSInteger)off len:(NSInteger)len options:(NSInteger)options;

//    public static byte[] encodeBytesToBytes(byte[] source) {
/**方法注释*/
+ (NSMutableArray *)encodeBytesToBytesWithsource:(NSMutableArray *)source;

//    public static byte[] encodeBytesToBytes(byte[] source, int off, int len, int options) throws java.io.IOException {
/**方法注释*/
+ (NSMutableArray *)encodeBytesToBytesWithsource:(NSMutableArray *)source off:(NSInteger)off len:(NSInteger)len options:(NSInteger)options;

//    private static int decode4to3(byte[] source, int srcOffset, byte[] destination, int destOffset, int options) {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public static byte[] decode(byte[] source) {
/**方法注释*/
+ (NSMutableArray *)decodeWithsource:(NSMutableArray *)source;

//    public static byte[] decode(byte[] source, int off, int len, int options) throws java.io.IOException {
/**方法注释*/
+ (NSMutableArray *)decodeWithsource:(NSMutableArray *)source off:(NSInteger)off len:(NSInteger)len options:(NSInteger)options;

//    public static byte[] decode(String s) throws java.io.IOException {
/**方法注释*/
+ (NSMutableArray *)decodeWiths:(NSString *)s;

//    public static byte[] decode(String s, int options) throws java.io.IOException {
/**方法注释*/
+ (NSMutableArray *)decodeWiths:(NSString *)s options:(NSInteger)options;

//    public static Object decodeToObject(String encodedObject) throws java.io.IOException,
/**方法注释*/
+ (NSObject *)decodeToObjectWithencodedObject:(NSString *)encodedObject;

//    public static Object decodeToObject(String encodedObject, int options, final ClassLoader loader)
/**方法注释*/
+ (NSObject *)decodeToObjectWithencodedObject:(NSString *)encodedObject options:(NSInteger)options ClassLoader:(NSObject *)ClassLoader;

//                    public Class<?> resolveClass(java.io.ObjectStreamClass streamClass) throws java.io.IOException,
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    public static void encodeToFile(byte[] dataToEncode, String filename) throws java.io.IOException {
/**方法注释*/
+ (void)encodeToFileWithdataToEncode:(NSMutableArray *)dataToEncode filename:(NSString *)filename;

//    public static void decodeToFile(String dataToDecode, String filename) throws java.io.IOException {
/**方法注释*/
+ (void)decodeToFileWithdataToDecode:(NSString *)dataToDecode filename:(NSString *)filename;

//    public static byte[] decodeFromFile(String filename) throws java.io.IOException {
/**方法注释*/
+ (NSMutableArray *)decodeFromFileWithfilename:(NSString *)filename;

//    public static String encodeFromFile(String filename) throws java.io.IOException {
/**方法注释*/
+ (NSString *)encodeFromFileWithfilename:(NSString *)filename;

//    public static void encodeFileToFile(String infile, String outfile) throws java.io.IOException {
/**方法注释*/
+ (void)encodeFileToFileWithinfile:(NSString *)infile outfile:(NSString *)outfile;

//    public static void decodeFileToFile(String infile, String outfile) throws java.io.IOException {
/**方法注释*/
+ (void)decodeFileToFileWithinfile:(NSString *)infile outfile:(NSString *)outfile;

//    public static class InputStream extends java.io.FilterInputStream {
//这是内部类或接口的声明开始











//        private int lineLength;
/**注释*/
@property (nonatomic, assign) NSInteger lineLength;







//        public InputStream(java.io.InputStream in) {
/**构造方法注释*/
- (instancetype)initWithin:(NSObject *)in;

//        public InputStream(java.io.InputStream in, int options) {
/**构造方法注释*/
- (instancetype)initWithin:(NSObject *)in options:(NSInteger)options;

//        public int read() throws java.io.IOException {
/**方法注释*/
- (NSInteger)read;

//        public int read(byte[] dest, int off, int len) throws java.io.IOException {
/**方法注释*/
- (NSInteger)readWithdest:(NSMutableArray *)dest off:(NSInteger)off len:(NSInteger)len;

//    public static class OutputStream extends java.io.FilterOutputStream {
//这是内部类或接口的声明开始

//        private boolean encode;
/**注释*/
@property (nonatomic, assign) BOOL encode;

//        private int position;
/**注释*/
@property (nonatomic, assign) NSInteger position;

//        private byte[] buffer;
/**注释*/
@property (nonatomic, strong) NSMutableArray *buffer;

//        private int bufferLength;
/**注释*/
@property (nonatomic, assign) NSInteger bufferLength;

//        private int lineLength;
/**注释*/
//@property (nonatomic, assign) NSInteger lineLength;

//        private boolean breakLines;
/**注释*/
@property (nonatomic, assign) BOOL breakLines;



//        private boolean suspendEncoding;
/**注释*/
//@property (nonatomic, assign) BOOL suspendEncoding;





//        public OutputStream(java.io.OutputStream out) {
/**构造方法注释*/
- (instancetype)initWithout:(NSObject *)out;

//        public OutputStream(java.io.OutputStream out, int options) {
/**构造方法注释*/
- (instancetype)initWithout:(NSObject *)out options:(NSInteger)options;

//        public void write(int theByte) throws java.io.IOException {
/**方法注释*/
- (void)writeWiththeByte:(NSInteger)theByte;

//        public void write(byte[] theBytes, int off, int len) throws java.io.IOException {
/**方法注释*/
- (void)writeWiththeBytes:(NSMutableArray *)theBytes off:(NSInteger)off len:(NSInteger)len;

//        public void flushBase64() throws java.io.IOException {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//        public void close() throws java.io.IOException {
/**方法注释*/
- (void)close;

//        public void suspendEncoding() throws java.io.IOException {
/**方法注释*/
- (void)suspendEncoding;

//        public void resumeEncoding() {
/**方法注释*/
- (void)resumeEncoding;

@end