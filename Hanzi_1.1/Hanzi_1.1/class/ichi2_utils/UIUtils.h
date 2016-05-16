#import <Foundation/Foundation.h>


@interface UIUtils : NSObject

//public class UIUtils {
//这是内部类或接口的声明开始

//    public static float getDensityAdjustedValue(Context context, float value) {
/**方法注释*/
+ (NSObject *)getDensityAdjustedValueWithcontext:(NSObject *)context value:(NSObject *)value;

//    public static long getDayStart() {
/**方法注释*/
+ (NSInteger)getDayStart;

//    public static void saveCollectionInBackground(Context context) {
/**方法注释*/
+ (void)saveCollectionInBackgroundWithcontext:(NSObject *)context;

//                public void onPreExecute() {
/**方法注释*/
- (void)onPreExecute;

//                public void onPostExecute(TaskData result) {
/**方法注释*/
- (void)onPostExecuteWithresult:(NSObject *)result;

//                public void onProgressUpdate(TaskData... values) {
/**方法注释*/
- (void)onProgressUpdateWithvalues:(NSObject *)values;

//                public void onCancelled() {
/**方法注释*/
- (void)onCancelled;

@end