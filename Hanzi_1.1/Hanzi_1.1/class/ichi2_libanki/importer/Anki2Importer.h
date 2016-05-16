#import <Foundation/Foundation.h>

@interface Anki2Importer : NSObject

//public class Anki2Importer {
//这是内部类或接口的声明开始

//    private HashMap<String, String> nameToNum;
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

//    private static final int GUID = 1;
/**常量注释*/
//static NSInteger const GUID = 1;

//    private static final int MID = 2;
/**常量注释*/
//static NSInteger const MID = 2;

//    private static final int MEDIAPICKLIMIT = 1024;
/**常量注释*/
//static NSInteger const MEDIAPICKLIMIT = 1024;

//    private static final String CHECKMARK = "\u2714";
/**常量注释*/
//static NSString * const CHECKMARK = "\u2714";

//    public Anki2Importer(Collection col, String file, DeckTask.ProgressCallback progressCallback) throws IOException {
//请谨慎，这个不完整/**常量注释*/
//static NSObject * const 我错啦我错啦

//    private void publishProgress(boolean unpacking, int notesDone, int cardsDone, boolean cleanup) {
/**方法注释*/
- (void)publishProgressWithunpacking:(BOOL)unpacking notesDone:(NSInteger)notesDone cardsDone:(NSInteger)cardsDone cleanup:(BOOL)cleanup;

//    public int run() {
/**方法注释*/
- (NSInteger)run;

//    private void _prepareFiles(String src) {
/**方法注释*/
- (void)_prepareFilesWithsrc:(NSString *)src;

//    private int _import() {
/**方法注释*/
- (NSInteger)_import;

//    private void _prepareTS() {
/**方法注释*/
- (void)_prepareTS;

//    private long ts() {
/**方法注释*/
- (NSInteger)ts;

//    private void _importNotes() {
/**方法注释*/
- (void)_importNotes;

//    private boolean _uniquifyNote(Object[] note) {
/**方法注释*/
- (BOOL)_uniquifyNoteWithnote:(NSMutableArray *)note;

//    private void _prepareModels() {
/**方法注释*/
- (void)_prepareModels;

//    private long _mid(long srcMid) {
/**方法注释*/
- (NSInteger)_midWithsrcMid:(NSInteger)srcMid;

//    private long _did(long did) {
/**方法注释*/
- (NSInteger)_didWithdid:(NSInteger)did;

//    private int _importCards() {
/**方法注释*/
- (NSInteger)_importCards;

//    private String _mungeMedia(long mid, String fields) {
/**方法注释*/
- (NSString *)_mungeMediaWithmid:(NSInteger)mid fields:(NSString *)fields;

//    private boolean compareMedia(BufferedInputStream lhis, BufferedInputStream rhis) {
/**方法注释*/
- (BOOL)compareMediaWithlhis:(NSObject *)lhis rhis:(NSObject *)rhis;

//    private BufferedInputStream _mediaData(String fname, String dir) {
/**方法注释*/
- (NSObject *)_mediaDataWithfname:(NSString *)fname dir:(NSString *)dir;

//    private BufferedInputStream _srcMediaData(String fname) {
/**方法注释*/
- (NSObject *)_srcMediaDataWithfname:(NSString *)fname;

//    private BufferedInputStream _dstMediaData(String fname) {
/**方法注释*/
- (NSObject *)_dstMediaDataWithfname:(NSString *)fname;

//    private void _writeDstMedia(String fname, BufferedInputStream is) {
/**方法注释*/
- (void)_writeDstMediaWithfname:(NSString *)fname is:(NSObject *)is;

//    private void _postImport() {
/**方法注释*/
- (void)_postImport;

@end