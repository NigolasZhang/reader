#import <Foundation/Foundation.h>

@interface MediaSyncer : NSObject

//public class MediaSyncer {
//这是内部类或接口的声明开始

//    private Collection mCol;
/**注释*/
@property (nonatomic, strong) NSObject *mCol;

//    private RemoteMediaServer mServer;
/**注释*/
@property (nonatomic, strong) NSObject *mServer;

//    private int mDownloadCount;
/**注释*/
@property (nonatomic, assign) NSInteger mDownloadCount;

//    private Connection mCon;
/**注释*/
@property (nonatomic, strong) NSObject *mCon;

//    public MediaSyncer(Collection col, RemoteMediaServer server, Connection con) {
/**构造方法注释*/
- (instancetype)initWithcol:(NSObject *)col server:(NSObject *)server con:(NSObject *)con;

//    public String sync() throws UnknownHttpResponseException, MediaSyncException {
/**方法注释*/
- (NSString *)sync;

//    private void _downloadFiles(List<String> fnames) {
/**方法注释这个方法有泛型，注意啦！*/
//- (NSObject *)我错啦匹配出错啦！你自己弄吧！;

@end