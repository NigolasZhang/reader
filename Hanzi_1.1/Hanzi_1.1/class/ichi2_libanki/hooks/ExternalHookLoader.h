#import <Foundation/Foundation.h>

@interface ExternalHookLoader : NSObject

//public class ExternalHookLoader {   
//这是内部类或接口的声明开始





//    private Activity mMainActivity;
/**注释*/
@property (nonatomic, strong) NSObject *mMainActivity;

//    private final File mHookFolderPath;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, strong) NSObject *mHookFolderPath;

//    public ExternalHookLoader(Activity mainActivity, String colPath) {
/**构造方法注释*/
- (instancetype)initWithmainActivity:(NSObject *)mainActivity colPath:(NSString *)colPath;

//	public HookPlugin importExternalHook(String dexFilename, String className) {
//这是内部类或接口的声明开始

//    private boolean prepareDex(File dexExternalStoragePath, File dexInternalStoragePath) {
/**方法注释*/
- (BOOL)prepareDexWithdexExternalStoragePath:(NSObject *)dexExternalStoragePath dexInternalStoragePath:(NSObject *)dexInternalStoragePath;

//    private class PrepareDexTask extends AsyncTask<File, Void, Boolean> {
//这是内部类或接口的声明开始

//        protected void onCancelled() {
/**方法注释*/
- (void)onCancelled;

//        protected void onPostExecute(Boolean result) {
/**方法注释*/
- (void)onPostExecuteWithresult:(NSObject *)result;

//        protected Boolean doInBackground(File... dexStoragePaths) {
/**方法注释*/
- (NSObject *)doInBackgroundWithdexStoragePaths:(NSObject *)dexStoragePaths;

@end