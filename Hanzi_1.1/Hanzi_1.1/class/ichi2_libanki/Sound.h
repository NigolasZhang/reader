//
//  Sound.h
//  volNotes01
//
//  Created by A on 16/5/6.
//  Copyright (c) 2016年 A. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sound : NSObject




//    private MediaPlayer mMediaPlayer;
/**注释*/
@property (nonatomic, strong) NSObject *mMediaPlayer;

//    private AudioManager mAudioManager;
/**注释*/
@property (nonatomic, strong) NSObject *mAudioManager;

//    private static OnCompletionListener mPlayAllListener;
/**注释*/
@property (nonatomic, strong) NSObject *mPlayAllListener;

//    private WeakReference<Activity> mCallingActivity;
/**方法注释这个方法有泛型，注意啦！*///弱指针弱引用
//@property (nonatomic, strong) NSObject *mPlayAllListener;

//    public static final int  SOUNDS_QUESTION = 0;
/**常量注释*/
//static NSInteger const SOUNDS_QUESTION = 0;

//    public static final int  SOUNDS_ANSWER = 1;
/**常量注释*/
//static NSInteger const SOUNDS_ANSWER = 1;

//    public static final int  SOUNDS_QUESTION_AND_ANSWER = 2;
/**常量注释*/
//static NSInteger const SOUNDS_QUESTION_AND_ANSWER = 2;

//    private HashMap<Integer, ArrayList<String>> mSoundPaths = new HashMap<Integer, ArrayList<String>>();
/**注释这个方法有泛型，注意啦！*///懒加载
@property (nonatomic, strong) NSMutableArray *mSoundPaths;

//    private static final String[] VIDEO_WHITELIST = {"3gp", "mp4", "webm", "mkv", "flv"};
/**常量注释*/
//static NSMutableArray * const VIDEO_WHITELIST = {"3gp", "mp4", "webm", "mkv", "flv"};

//    private static AudioManager.OnAudioFocusChangeListener afChangeListener = new AudioManager.OnAudioFocusChangeListener() {
//请谨慎，这个不完整/**常量注释*///Blockdaiti
@property (nonatomic, strong) NSObject *afChangeListener;

//        public void onAudioFocusChange(int focusChange) {
/**方法注释*/
- (void)onAudioFocusChangeWithfocusChange:(NSInteger)focusChange;

//    public void resetSounds() {
/**方法注释*/
- (void)resetSounds;

//    public void resetSounds(int which) {
/**方法注释*/
- (void)resetSoundsWithwhich:(NSInteger)which;

//    public void addSounds(String soundDir, String content, int qa) {
/**方法注释*/
- (void)addSoundsWithsoundDir:(NSString *)soundDir content:(NSString *)content qa:(NSInteger)qa;

//    public Boolean makeQuestionAnswerList() {
/**方法注释*/
- (Boolean *)makeQuestionAnswerList;

//    public static String expandSounds(String soundDir, String content) {
/**方法注释*/
+ (NSString *)expandSoundsWithsoundDir:(NSString *)soundDir content:(NSString *)content;

//    public void playSounds(int qa) {
/**方法注释*/
- (void)playSoundsWithqa:(NSInteger)qa;

//    public void playSound(String soundPath, OnCompletionListener playAllListener) {
/**方法注释*/
- (void)playSoundWithsoundPath:(NSString *)soundPath playAllListener:(NSObject *)playAllListener;

//    public void playSound(String soundPath, OnCompletionListener playAllListener, final VideoView videoView) {
/**方法注释*/
- (void)playSoundWithsoundPath:(NSString *)soundPath playAllListener:(NSObject *)playAllListener VideoView:(NSObject *)VideoView;

//                        public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
/**方法注释*/
- (void)onVideoSizeChangedWithmp:(NSObject *)mp width:(NSInteger)width height:(NSInteger)height;

//                    public void onPrepared(MediaPlayer mp) {
/**方法注释*/
- (void)onPreparedWithmp:(NSObject *)mp;

//    private static void configureVideo(VideoView videoView, int videoWidth, int videoHeight) {
/**方法注释*/
+ (void)configureVideoWithvideoView:(NSObject *)videoView videoWidth:(NSInteger)videoWidth videoHeight:(NSInteger)videoHeight;

//    public void notifyConfigurationChanged(VideoView videoView) {
/**方法注释*/
- (void)notifyConfigurationChangedWithvideoView:(NSObject *)videoView;

//    private final class PlayAllCompletionListener implements OnCompletionListener {
//这是内部类或接口的声明开始

//        private final int mQa;
/**注释final变量*/
//小心，它是带有final的成员变量@property (nonatomic, assign) NSInteger mQa;

//        private int mNextToPlay = 1;
/**注释*/
@property (nonatomic, assign) NSInteger mNextToPlay;

//        private PlayAllCompletionListener(int qa) {
/**构造方法注释*/
- (instancetype)initWithqa:(NSInteger)qa;

//        public void onCompletion(MediaPlayer mp) {
/**方法注释*/
- (void)onCompletionWithmp:(NSObject *)mp;

//    private void releaseSound() {
/**方法注释*/
- (void)releaseSound;

//    public void stopSounds() {
/**方法注释*/
- (void)stopSounds;

//    private static String getSoundPath(String soundDir, String sound) {
/**方法注释*/
+ (NSString *)getSoundPathWithsoundDir:(NSString *)soundDir sound:(NSString *)sound;

//    private static boolean hasURIScheme(String path) {
/**方法注释*/
+ (BOOL)hasURISchemeWithpath:(NSString *)path;

//    public void setContext(WeakReference<Activity> activityRef) {
/**方法注释这个方法有泛型，注意啦！*///弱指针弱引用
- (void)setContextWithactivityRef:(NSObject *)activityRef;

//    public OnCompletionListener getMediaCompletionListener() {
/**方法注释*/
- (NSObject *)getMediaCompletionListener;

//    public boolean hasQuestion() {
/**方法注释*/
- (BOOL)hasQuestion;

//    public boolean hasAnswer() {
/**方法注释*/
- (BOOL)hasAnswer;




@end
